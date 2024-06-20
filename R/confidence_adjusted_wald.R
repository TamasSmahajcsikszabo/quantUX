#' Adjusted Wald confidence interval for binomial distributions
#' @param s success count
#' @param n sample size
#' @param l confifence level given as decimal, e.g. 95% is 0.95
#' @returns numeric vector of interval of length 2
#' @export
confidence_adjusted_wald <- function(s, n, l) {
    prob <- (1 - l) / 2
    z <- qnorm(prob, lower.tail = FALSE)
    n_adjusted <- n + z^2
    p_adjusted <- (s + z^2 / 2) / (n_adjusted)
    ci <- z * sqrt((p_adjusted * (1 - p_adjusted)) / n_adjusted)
    return(c(p_adjusted - ci, p_adjusted + ci))
}
