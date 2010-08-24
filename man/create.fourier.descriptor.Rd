\name{create.fourier.descriptor}
\alias{create.fourier.descriptor}
\title{
Create a new Fourier descriptor.
}
\usage{
fourier.descriptor <- create.fourier.descriptor()
}
\description{
Create a new Fourier descriptor.
}
\arguments{
	\item{amplitude}{A numeric vector containing the desired amplitude
spectrum. Defaults to \code{c(0, 1, 0, 0)}}
	\item{phase}{A numeric vector containing the desired phase spectrum. Defaults
to \code{c(0, 0, 0, 0)}}
}
\examples{
library('FourierDescriptors')

fourier.descriptor <- create.fourier.descriptor()}
