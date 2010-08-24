\name{plot.fourier.descriptor}
\alias{plot.fourier.descriptor}
\title{
Plot a Fourier descriptor object. Requires ggplot2.
}
\usage{
fourier.descriptor <- random.fourier.descriptor(12)

plot(fourier.descriptor)}
\description{
Plot a Fourier descriptor object.
}
\arguments{
	\item{fourier.descriptor}{A Fourier descriptor object.}
	\item{steps}{At how many points along the curve should the descriptor
be evaluated? This amounts to a resolution parameter. More complex curves
will require higher values. Defaults to 720.}
}
\examples{
library('FourierDescriptors')

fourier.descriptor <- random.fourier.descriptor(12)

plot(fourier.descriptor)

plot(fourier.descriptor, steps = 20)}
