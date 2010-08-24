# Fourier Descriptors

This package provides tools for generating and visualizing Fourier
descriptors, a convenient formalism for describing planar closed-contour
curves.

# Example
    library('FourierDescriptors')
    
    fd1 <- create.fourier.descriptor()
    print(fd1)
    plot(fd1)
    
    fd2 <- random.fourier.descriptor(32, 2)
    plot(fd2)

# Please Note

* Only even-numbered frequencies can have non-zero amplitudes.
