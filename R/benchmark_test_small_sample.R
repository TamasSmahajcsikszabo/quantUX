#' Benchmark test for small sample (binomial distribution is used)
#' Small sample: success and failure counts are below 15
#' Performs a one-sided test
#' @param s number of successes
#' @param n sample size
#' @param t benchmark rate
#' @param mid Boolean, if TRUE mid-probability is reported (correction for discreteness in small samples)
#' @param ci Boolean, if TRUE adjusted Wald confidence interval is also reported
#' @param alpha for confidence interval
#' @returns exact or mid- probability of benchmark is exceeded or if confidence interval is also reported a 
#' vector of length 3 (probability and two CI bounds)
#' @export
benchmark_test_small_sample <- function(s, n, t, mid = FALSE, ci = FALSE, alpha = 0.05) {
    n_fact <- factorial(n)
    multiplier <- 1
    ps <- 0
    if (mid) {
        multiplier <- 0.5
    }
    for (i in s:n) {
        s_fact <- factorial(i)
        n_s_fact <- factorial(n - i)
        if (i == s) {
        ps <- ps + (n_fact / (s_fact * n_s_fact) * t^i * (1 - t)^(n - i)) * multiplier
        } else {
        ps <- ps + (n_fact / (s_fact * n_s_fact) * t^i * (1 - t)^(n - i))
        }
    }
    if (ci){
        ci <- confidence_adjusted_wald(s, n, 1-(2 * alpha))
        return(c(ps, ci))
    } else {
        return(ps)
    }
}
