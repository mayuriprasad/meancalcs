#' Takes a random sample of size n from vec, then calculates and returns
#'  the mean of that subsample.
#'
#' @param vec An input vector
#' @param n The size of the sample to take from vec
#'
#' @return Mean of the subsample taken from vec
#'
#' @import stringr
#' @import glue
#' @import dplyr
#' @import purrr
#'
#' @export



sample_mean <- function(vec, n) {
  random <- sample(vec, n, replace = TRUE)
  return(mean(random))
}

