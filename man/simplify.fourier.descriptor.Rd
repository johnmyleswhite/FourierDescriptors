\name{simplify.fourier.descriptor}
\alias{simplify.fourier.descriptor}
\title{Assign zero amplitude to some of the non-zero frequencies of an existing Fourier descriptor.}
\usage{
simplify.fourier.descriptor(fourier.descriptor, quantity = 1)
}
\description{Assign zero amplitude to some of the non-zero frequencies of an existing Fourier descriptor.}
\details{Returns a new Fourier descriptor.}
\arguments{\item{fourier.descriptor}{A Fourier descriptor object.}
\item{quantity}{How many frequency components should be removed?
Defaults to 1.}}
\examples{
library('FourierDescriptors')

fourier.descriptor <- random.fourier.descriptor(12)

fd <- simplify.fourier.descriptor(fourier.descriptor)}
