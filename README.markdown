# Introduction
The FourierDescriptors package provides methods for creating, manipulating and visualizing Fourier descriptors, a representational scheme used to describe closed planar contours. The images most easily described using Fourier descriptors are useful as stimuli for experiments in psychology and neuroscience.

# Installation
This package is being submitted to CRAN. When it propagates through the mirrors, you can install it using a simple call to `install.packages()`:

    install.packages('FourierDescriptors')

For the time being, please install it using the included source package by downloading this repository and running:

    R CMD INSTALL FourierDescriptors_*.tar.gz

# Basic Usage Example
    library('FourierDescriptors')
    
    fd1 <- create.fourier.descriptor()
    print(fd1)
    plot(fd1)
    
    fd2 <- random.fourier.descriptor(32, 2)
    plot(fd2)

# Please Note
* Only even-numbered frequencies can have non-zero amplitudes. Otherwise the described curve will not be closed.

# Examples for Gaining Intuition about the Amplitude Spectrum
    library('FourierDescriptors')
    
    plot(create.fourier.descriptor(amplitude = c(0, 0, 0, 0)))
    
    plot(create.fourier.descriptor(amplitude = c(0, 1, 0, 0)))
    
    plot(create.fourier.descriptor(amplitude = c(0, 0, 0, 1)))
    
    plot(create.fourier.descriptor(amplitude = c(0, 1, 0, 1)))
    
    plot(random.fourier.descriptor(24,
                                   non.zero.frequencies = 4,
                                   generating.function = function() {runif(1)}),
         steps = 360 * 10)
