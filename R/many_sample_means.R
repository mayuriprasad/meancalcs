#' Performs the sample_mean process many times on an input vector
#'  and returns results in a vector.
#'
#' @param vec An input vector
#' @param n The size of the sample to take from vec
#' @param reps Number of times the sample_mean process should be repeated
#'
#' @return Vector of each result from sample_mean
#'
#' @import stringr
#' @import dplyr
#' @import glue
#' @import purrr
#'
#' @export
many_sample_means <- function(vec, n, reps) {
  return(unlist(replicate(reps, expr = sample_mean(vec, n))))
}
