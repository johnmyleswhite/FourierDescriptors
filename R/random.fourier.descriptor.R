#' Create a new Fourier descriptor object with randomly assigned amplitude
#' along its even frequency components.
#' 
#' Returns a new Fourier descriptor.
#'
#' @param total.frequencies What is the highest frequency that the
#'   descriptor should have?
#' @param non.zero.frequencies How many frequency components should be given
#'   non-zero amplitude? Defaults to 1.
#' @param generating.function An anonymous function that returns an amplitude
#'   weight. The default function adds weight 1 to each new frequency.
#' @export
#' @examples
#' fd <- random.fourier.descriptor(12)
#'
#' fd <- random.fourier.descriptor(24,
#'                                          non.zero.frequencies = 3,
#'                                          generating.fourier = functions() {return(runif(1))})
#'
#' plot(fd)
#' @usage
#' fd <- random.fourier.descriptor(12)

random.fourier.descriptor <- function(total.frequencies,
                                      non.zero.frequencies = 1,
                                      generating.function = function() {return(1)})
{
  if (total.frequencies %% 2 == 1)
  {
    stop('total.frequencies must be divisible by 2')
  }
  
  if (non.zero.frequencies > total.frequencies / 2)
  {
    stop('non.zero.frequencies must be less than half of total.frequencies')
  }
  
  fourier.descriptor <- data.frame(Amplitude = rep(0, total.frequencies),
                                   Phase = rep(0, total.frequencies))
  
  frequencies <- sample(1:(total.frequencies / 2), non.zero.frequencies)
  
  for (i in 1:non.zero.frequencies)
  {
    fourier.descriptor[2 * frequencies[i], 'Amplitude'] <- generating.function()
  }
  
  class(fourier.descriptor) <- 'fourier.descriptor'
  
  return(fourier.descriptor)
}
