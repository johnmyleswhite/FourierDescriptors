\name{plot.fourier.descriptor}
\alias{plot.fourier.descriptor}
\alias{plot}
\title{
Plot a Fourier descriptor object. Requires ggplot2.
}
\usage{
\method{plot}{fourier.descriptor}(x, steps = 720, \ldots)
}
\description{
Plot a Fourier descriptor object.
}
\arguments{
	\item{x}{A Fourier descriptor object.}
	\item{steps}{At how many points along the curve should the descriptor
be evaluated? This amounts to a resolution parameter. More complex curves
will require higher values. Defaults to 720.}
	\item{...}{Other arguments passed to underlying plot call.}
}
\examples{
library('FourierDescriptors')

fourier.descriptor <- random.fourier.descriptor(12)

plot(fourier.descriptor)

plot(fourier.descriptor, steps = 20)}
