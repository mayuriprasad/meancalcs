context("sing day")

test_that("correct verse", {

  expected <- "On the first day of Christmas, my true love sent to me,
  a partridge in a pear tree."
  xmas <- read.csv("https://www.dropbox.com/s/e584pryn8evm1gz/xmas.csv?dl=1")
  actual <- capture.output(sing_day(xmas, 1, Full.Phrase))

  expect_equal(expected, actual)

})
