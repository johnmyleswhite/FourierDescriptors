\name{cumbend}
\alias{cumbend}
\title{
Evaluate the angular position of a Fourier descriptor at point t.
}
\usage{
cumbend(fourier.descriptor, t)}
\description{
	Evaluate the angular position of a Fourier descriptor at point t.
}
\arguments{
	\item{fourier.descriptor}{A Fourier descriptor object.}
	\item{t}{At which point should the descriptor be evaluated?}
}
\examples{
library('FourierDescriptors')

fourier.descriptor <- random.fourier.descriptor(12)

theta.start <- cumbend(fourier.descriptor, 0)
theta.end <- cumbend(fourier.descriptor, 2 * pi)}
