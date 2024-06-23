data <- c(215, 131, 260, 171, 187, 147, 74, 170, 131, 165, 347, 90)
benchmark_value <- 60

test_that("Test task time benchmark", {
    expected <- 0.9999945
    expect_equal(round(benchmark_task_time(data, benchmark_value), 7), expected)
})

