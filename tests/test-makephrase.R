context("make phrase")

test_that("correct phrase", {

  expected <- "six Callies polling"
  actual <- make_phrase(num = 6, num_word = "six", item = "Cally", verb = "polling",
                        adjective = NA, location = NA)

  expect_equal(expected, actual)

})
