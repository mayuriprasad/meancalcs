#' Takes a noun and makes it plural
#'
#' @param gift A string or vector of strings
#'
#' @return A string or vector of strings with the pluralized words
#'
#' @import stringr
#' @import dplyr
#' @import glue
#' @import purrr
#'
#' @export
pluralize_gift <- function(gift){
  if (gift != "goose" & gift != "lady") {
    gift <- str_c(gift, "s")
  }
  else if (gift == "goose") {
    gift <- gift %>% str_replace("oo", "ee")
  }
  else if (gift == "lady") {
    gift <- gift %>% str_replace("y$", "ies")
  }

  return(gift)
}
