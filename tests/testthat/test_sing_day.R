context("Sing Day Unit Test")

# Make sure days have items listed correctly.

test_that("make phrases function is written correctly", {

  line <- c(1)
  day_in_word <- c("first")
  phrase_col <- c("a golden ticket from a Wonka bar")

  dataset <- data.frame(line, day_in_word, phrase_col)

  phrase <- "On the first day of Christmas, my true love sent to me, a golden ticket from a Wonka bar"

  expect_equal(sing_day(dataset, line, day_in_word, phrase_col), phrase)

})
