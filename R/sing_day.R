#' Takes a noun and makes it plural
#'
#' @param dataset A data frame containing information about gifts
#' @param line The number of the line for the day you want to sing about
#' @param phrase_col The variable name for the column in the dataset that
#' contains the gift phrases
#'
#' @return A string singing the line of the song with all gifts for the given day.
#'
#' @import stringr
#' @import dplyr
#' @import glue
#' @import purrr
#'
#' @export
sing_day <- function(dataset, line, day_in_word, phrase_col){

  phrases <- dataset %>% pull({{phrase_col}})
  
  song_lyrics <- glue("On the {day_in_word} day of Christmas, my true love sent to me, ")
  
  for (i in line:1) {
    if (i == line) {
      song_lyrics <- paste0(song_lyrics, phrases[i])
    }
    else if (i != 1) {
      song_lyrics <- paste0(song_lyrics, ", ", phrases[i])
    }
    else {
      song_lyrics <- paste0(song_lyrics, ", and ", phrases[i], ".")
    }
  }
  return(song_lyrics)

}

