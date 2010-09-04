\name{FourierDescriptors-package}
\alias{FourierDescriptors-package}
\alias{FourierDescriptors}
\docType{package}
\title{Generate closed planar contours using Fourier descriptors.}
\description{Generate closed plane curves using the Fourier descriptor method
of Zahn and Roskies 1972.}
\details{
\tabular{ll}{
Package: \tab FourierDescriptors\cr
Type: \tab Package\cr
Version: \tab 0.1\cr
Date: \tab 2010-08-24\cr
License: \tab Artistic-2.0\cr
LazyLoad: \tab yes\cr
}
plot(create.fourier.descriptor())
}
\author{
John Myles White

Maintainer: John Myles White <jmw@johnmyleswhite.com>
}
\references{
Zahn and Roskies 1972
}
\keyword{ package }
\examples{
library('FourierDescriptors')

fd <- random.fourier.descriptor(12, 2)

print(fd)

plot(fd)}
