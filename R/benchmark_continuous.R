#' Benchmark test for continuous data, e.g. satisfaction scores
#' @param m sample mean
#' @param mu target benchmark
#' @param std sample standard deviation
#' @param n sample size
#' @param ci Boolean, if TRUE, confidence interval is also reported
#' @param alpha for confidence interval
#' @export
benchmark_continuous <- function(m, mu, std, n, ci = FALSE, alpha = 0.1) {
    t <- (m - mu) / (std / sqrt(n))
    p <- pt(t, n - 1, lower.tail = FALSE)
    if (ci) {
        t <- qt(alpha, n - 1, lower.tail = FALSE)
        ci <- t * (std / sqrt(n))
        return(c(p, m - ci, m + ci))
    } else {
        return(p)
    }
}
