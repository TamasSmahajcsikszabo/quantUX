data <- c(215, 131, 260, 171, 187, 147, 74, 170, 131, 165, 347, 90)
benchmark_value <- 60
test_that("Test task time benchmark", {
    expected <- 0.9999945
    expect_equal(round(benchmark_log(data, benchmark_value), 7), expected)
})

data2 <- c(90, 59, 54, 55, 171, 86, 107, 53, 79, 72, 157)
benchmark_value2 <- 100
test_that("Test task time benchmark II.", {
    expected <- 0.07559380
    expect_equal(round(benchmark_log(data2, benchmark_value2), 7), expected)
})
