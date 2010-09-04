\name{print.fourier.descriptor}
\alias{print.fourier.descriptor}
\alias{print}
\title{
Print a Fourier descriptor object.
}
\usage{
\method{print}{fourier.descriptor}(x, \ldots)
}
\description{
Print a Fourier descriptor object.
}
\arguments{
	\item{x}{A Fourier descriptor object.}
	\item{...}{Other arguments passed to underlying plot call.}
}
\examples{
library('FourierDescriptors')

fourier.descriptor <- random.fourier.descriptor(12)

print(fourier.descriptor)}
