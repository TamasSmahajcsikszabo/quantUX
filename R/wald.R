#' Estimated the Wald (Laplace) confidence interval for binomial distribution
#' 
#' @param s success count
#' @param n sample size
#' @param l confifence level given as decimal, e.g. 95% is 0.95
#' @returns numeric vector of interval of length 2
#' @export
wald <- function(s, n, l) {
    p <- s / n
    prob <- (1 - l) / 2
    z <- qnorm(prob, lower.tail = FALSE)
    ci <- z * sqrt((p * (1 - p)) / n)
    return(c(p - ci, p + ci))
}
