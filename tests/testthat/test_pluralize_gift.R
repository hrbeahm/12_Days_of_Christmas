context("Pluralize Gift Unit Test")

# Make sure 'y's change to 'ies'.

test_that("pluralize gift changes y to ies", {

  y_form <- "pony"
  ies_form <- "ponies"
  expect_equal(pluralize_gift(y_form, 2), ies_form)

})
