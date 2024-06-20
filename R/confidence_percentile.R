#' Estimates percentile confidence interval (e.g. 0.5 means the median
#' @param x data, numeric vector
#' @param p percentile, decimal
#' @param l confifence level given as decimal, e.g. 95% is 0.95
#' @returns numeric vector of interval of length 2
#' @export
confidence_percentile <- function(x, p, l) {
    x <- na.omit(x)
    n <- length(x)
    prob <- (1 - l) / 2
    z <- qnorm(prob, lower.tail = FALSE)
    ci <- z * sqrt(n * p * (1 - p))
    values <- round(c(n * p - ci, n * p + ci))
    return(c(sort(x)[values[1]], sort(x)[values[2]]))
}
