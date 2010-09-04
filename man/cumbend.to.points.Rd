\name{cumbend.to.points}
\alias{cumbend.to.points}
\title{
Produce a set of spatial coordinates induced by a Fourier descriptor object.
}
\usage{
cumbend.to.points(fourier.descriptor, steps = 720)}
\description{
Produce a set of spatial coordinates induced by a Fourier descriptor object. Returns
a \code{data.frame} containing the X, Y coordinates of the curve defined by the
Fourier descriptor evaluated at \code{steps} evenly spaced points along the complete
contour.
}
\arguments{
	\item{fourier.descriptor}{A Fourier descriptor object.}
	\item{steps}{At how many points along the curve should the descriptor
be evaluated? This amounts to a resolution parameter. More complex curves
will require a larger value. Defaults to 720.}
}
\examples{
fourier.descriptor <- random.fourier.descriptor(12)

points <- cumbend.to.points(fourier.descriptor)

low.res.points <- cumbend.to.points(fourier.descriptor, steps = 20)}
