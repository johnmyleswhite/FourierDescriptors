library('testthat')

library('FourierDescriptors')

fourier.descriptor <- create.fourier.descriptor()
expect_that(fourier.descriptor[['Amplitude']], equals(c(0, 1, 0, 0)))
expect_that(fourier.descriptor[['Phase']], equals(c(0, 0, 0, 0)))
expect_that(fourier.descriptor, is_a('fourier.descriptor'))

expect_that(cumbend(fourier.descriptor, 0), equals(1))
expect_that(random.fourier.descriptor(3), throws_error())
expect_that(random.fourier.descriptor(4, 3), throws_error())
