#' Confidence interval for data with log-transformation (i.e. for skewed data, such as task times)
#' The t-distribution adjusts for the sample size
#' With larger sample verges to normal z-confidence interval
#' @param x data, numeric vector
#' @param l confidence level, decimal
#' @export
confidence_log <- function(x, l) {
    prob <- (1 - l) / 2
    s <- na.omit(x)
    s <- log(s[s > 0])
    mean_log <- mean(s, na.rm = TRUE)
    n <- length(s)
    t <- qt(prob, n - 1, lower.tail = FALSE)
    std <- sd(s, na.rm = TRUE)
    ci <- t * (std / sqrt(n))
    return(exp(c(mean_log - ci, mean_log + ci)))
}
