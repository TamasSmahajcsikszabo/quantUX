#' Generated paired sample
#' @param n numeric, sample size
#' @param s numeric, number of samples, defaults to 2
#' @returns list of vectors
#' @export
generate_paired_sample <- function(n, s = 2) {
    samples  <- list()
    x <- sample(seq(10, 100, 0.5), n, replace = TRUE)
    samples[[1]] <- x
    for (i in seq(1, s)){
        if (i > 1) {
            y <- x + sample(seq(-10, 10, 0.5), n, replace = TRUE) * sample(seq(1, 5), n, replace = TRUE)
            samples[[i]] <- y
        }
    }
    return(samples)
}
