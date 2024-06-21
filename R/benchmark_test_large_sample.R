#' Benchmark test for large sample
#' Small sample: success and failure counts are at least 15
#' Performs a one-sided test
#' @param s number of successes
#' @param n sample size
#' @param t benchmark rate
#' @param ci Boolean, if TRUE adjusted Wald confidence interval is also reported
#' @param alpha for confidence interval
#' @returns probability of benchmark is exceeded or if confidence interval is also reported a 
#' vector of length 3 (probability and two CI bounds)
#' @export
benchmark_test_large_sample <- function(s, n, t, ci = FALSE, alpha = 0.05) {
    proportion <- s / n
    z <- (proportion - t) / sqrt((t * (1 - t)) / n)
    p <- pnorm(z, mean = 0, sd = 1, lower.tail = FALSE)
    if (ci) {
        ci <- confidence_adjusted_wald(s, n, 1 - alpha)
        return(c(p, ci))
    } else {
        return(p)
    }
}
