#' Produce a set of spatial coordinates induced by a Fourier descriptor
#' object generated by \code{\link{random.fourier.descriptor}}.
#' 
#' Returns a data.frame() containing the (X,Y) coordinates of the curve
#' defined by the Fourier descriptor evaluated by \code{steps} points.
#'
#' @include random-fourier-descriptor.R
#' @param fourier.descriptor A Fourier descriptor object generated by
#'   \code{\link{random.fourier.descriptor}}
#' @param steps At how many points along the curve should the descriptor
#'   be evaluated? This amounts to a resolution parameter. Defaults to 720.
#' @export
#' @examples
#' fourier.descriptor <- random.fourier.descriptor(12)
#'
#' points <- cumbend.to.points(fourier.descriptor)
#'
#' points <- cumbend.to.points(fourier.descriptor, steps = 20)
#' @usage
#' fourier.descriptor <- random.fourier.descriptor(12)
#'
#' points <- cumbend.to.points(fourier.descriptor)

cumbend.to.points <- function(fourier.descriptor, steps = 720)
{
    current.point <- complex(real = 0, imaginary = 0)
    points <- data.frame(X = Re(current.point), Y = Im(current.point))
    
    for (t in seq(0, 2 * pi, by = (2 * pi) / steps))
    {
        bend.angle <- cumbend(fourier.descriptor, t)
        following.point <- current.point + complex(real = cos(bend.angle),
                                                   imaginary = sin(bend.angle))
        points <- rbind(points, data.frame(X = Re(current.point), Y = Im(current.point)))
        current.point <- following.point
    }
    
    return(points)
}
