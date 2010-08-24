\name{random.fourier.descriptor}
\alias{random.fourier.descriptor}
\title{
Create a new Fourier descriptor object with randomly assigned
amplitude along its even frequency components.
}
\usage{
fd <- random.fourier.descriptor(12)}
\description{
Create a new Fourier descriptor object with randomly assigned amplitude
along its even frequency components.
}
\arguments{
	\item{total.frequencies}{What is the range of frequencies that the
descriptor should employ?}
	\item{non.zero.frequencies}{How many frequency components should be given
non-zero amplitude? Defaults to 1.}
	\item{generating.function}{An anonymous function that returns an amplitude
weight. The default function adds weight 1 to each new frequency.}
}
\examples{
library('FourierDescriptors')

fd <- random.fourier.descriptor(12)}
