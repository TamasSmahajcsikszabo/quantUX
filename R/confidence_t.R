#' Confidence interval for continuous data
#' The t-distribution adjusts for the sample size
#' With larger sample verges to normal z-confidence interval
#' @param x data, numeric vector
#' @param l confidence level, decimal
#' @export
confidence_t <- function(x, l) {
    s <- na.omit(x)
    prob <- (1 - l) / 2
    n <- length(s)
    t <- qt(prob, n - 1, lower.tail = FALSE)
    x_hat <- mean(x, na.rm = TRUE)
    std <- sd(x, na.rm = TRUE)
    ci <- t * (std / sqrt(n))
    return(c(x_hat - ci, x_hat + ci))
}
