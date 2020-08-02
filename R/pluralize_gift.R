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
pluralize_gift <- function(gift, day) {
  
  no_edits <- str_detect(gift, "oo") |
    str_detect(gift, "y$") |
    day == 1

  gift <- gift %>%
    str_replace("oo", "ee") %>%
    str_replace("y$", "ies")

  gift[!no_edits] <- paste0(gift[!no_edits], "s")

  return(gift)

}
