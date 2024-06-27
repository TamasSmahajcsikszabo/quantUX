#' Paired two sample t-test
#' @param x numeric vector
#' @param y numeric vector
#' @param alpha confidence level
#' @export
paired_two_sample_t <- function(x, y, alpha=0.05) {
    D <- mapply(function(i, z) {
        i - z
    }, x, y)
    hD <- mean(D, na.rm = TRUE)
    sD <- sd(D)
    t <- hD / (sD / sqrt(length(x)))
    p <- pt(t, length(x) - 1, lower.tail = FALSE)
    t_a <- qt(alpha, n-1, lower.tail=FALSE)
    ci <- c(hD - t_a, hD + t_a)
    return(c(hD, sD, p, ci))
}
