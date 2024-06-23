test_that("NPS estimator test", {
  data <- c(10, 7, 6,9,10,8,10,10, 9,8,7,5,8,0,9)
  expected <- 0.27
  expect_equal(round(nps_estimator(data),2), expected)
})
