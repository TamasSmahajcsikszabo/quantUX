#' Benchmark test for task times (positively skewed, long right tail data)
#' @param x data, numeric vector
#' @param mu target benchmark
#' @param ci Boolean, if TRUE, confidence interval is also reported alongside the geometric mean (vector length of 4)
#' @param alpha for confidence interval
benchmark_task_time <- function(x, mu, ci = FALSE, alpha = 0.1) {
    x <- na.omit(x)
    x_ln <- log(x)
    mu_ln <- log(mu)
    std_ln <- sd(x_ln)
    m_ln  <-  mean(x_ln, na.rm=TRUE)
    t <- (mu_ln - m_ln) / (std_ln / sqrt(length(x_ln)))
    p <- pt(t, length(x_ln) - 2, lower.tail = FALSE)
    if (ci) {
        ci <- confidence_log(x,1 -alpha)
        geo_mean <- geometric_mean(x)
        return(c(p, ci,geo_mean))
    } else {
        return(p)
    }
}
