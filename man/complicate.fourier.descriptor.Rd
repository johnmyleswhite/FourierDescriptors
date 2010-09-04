\name{complicate.fourier.descriptor}
\alias{complicate.fourier.descriptor}
\title{
Add amplitude weights to the zero-weighted frequencies of an existing Fourier descriptor.
}
\usage{
complicate.fourier.descriptor(fourier.descriptor, quantity = 1, generating.function = function() \{return(1)\})
}
\description{
Add amplitude weights to the zero-weighted frequencies of an existing Fourier descriptor.
}
\arguments{
  \item{fourier.descriptor}{A Fourier descriptor object.}
  \item{quantity}{How many frequency components should be added? Defaults to 1.}
  \item{generating.function}{An anonymous function that returns an amplitude
weight. The default function adds weight 1 to each new frequency.}
}
\examples{
library('FourierDescriptors')

fourier.descriptor <- random.fourier.descriptor(12)

fd <- complicate.fourier.descriptor(fourier.descriptor)}
