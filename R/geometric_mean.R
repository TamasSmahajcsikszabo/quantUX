#' Computes the geometric mean
#' @param x data, numberic vector
#' @returns the exponential of the mean of log-transformed data
#' @export
geometric_mean <- function(x){
    return(exp(mean(log(x[x>0]), na.rm=TRUE)))
}
