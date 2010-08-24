#' Create a new Fourier descriptor object.
#' 
#' Returns a new Fourier descriptor.
#'
#' @param amplitude The amplitude spectrum for the new Fourier descriptor.
#'  Defaults to c(0, 1, 0, 0)
#' @param phase The phase spectrum for the new Fourier descriptor.
#'  Defaults to c(0, 0, 0, 0)
#' @export
#' @examples
#' fourier.descriptor <- create.fourier.descriptor()
#' @usage
#' fourier.descriptor <- create.fourier.descriptor()

create.fourier.descriptor <- function(amplitude = c(0, 1, 0, 0), phase = c(0, 0, 0, 0))
{
  if (any(amplitude[seq(1, length(amplitude), by = 2)] != 0))
  {
    stop('Invalid amplitude spectrum: non-closed contour would result from non-zero odd frequency component')
  }
  fourier.descriptor <- list('Amplitude' = amplitude, 'Phase' = phase)
  class(fourier.descriptor) <- 'fourier.descriptor'
  return(fourier.descriptor)
}
