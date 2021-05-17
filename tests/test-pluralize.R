context("pluralize gift")

test_that("correct pluralization", {

  expected <- c("geese", "parties", "friends")
  actual <- map_chr(c("goose", "party", "friend"), pluralize_gift)

  expect_equal(expected, actual)

})
