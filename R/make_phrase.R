#' Puts the various parts of speech together into a full phrase.
#'
#' @param num An integer
#' @param num_word A string corresponding to the integer
#' @param item A string
#' @param verb A string
#' @param adjective A string
#' @param location A string
#'
#' @return A string containing the words in grammatical order.
#'
#' @import stringr
#' @import glue
#' @import dplyr
#' @import purrr
#'
#' @export



make_phrase <- function(num, num_word, item, verb, adjective, location){
  verb <- str_replace_na(verb, "")
  adjective <- str_replace_na(adjective, "")
  location <- str_replace_na(location, "")
  if (num == 1) {
    phrase <- str_c(num_word, item, location, sep = " ")
  }
  else if (num >= 2 & num <= 5) {
    phrase <- str_c(num_word, adjective, pluralize_gift(item), sep = " ")
  }
  else if(num >= 6 & num <= 12) {
    phrase <- str_c(num_word, pluralize_gift(item), verb, sep = " ")
  }
  return(phrase)
}

