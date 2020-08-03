context("Make Phrase Unit Test")

# Make sure phrases get written correctly.

test_that("make phrases function is written correctly", {

  num <- 5
  num_words <- "five"
  item <- "ducks"
  verb <- "a-quacking"
  adjective <- "yellow"
  location <- "in a pond"
  phrase <- "five yellow ducks a-quacking in a pond"

  expect_equal(make_phrase(num, num_words, item, verb, adjective, location), phrase)

})
