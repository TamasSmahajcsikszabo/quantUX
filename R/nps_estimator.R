#' Estimated NPS
#' @param data (numeric vector of NPS ratings)
#' @param detail, Boolean, if TRUE returns NPS and detailed groups statistics
#' @returns NPS score as decimal
#' @export
nps_estimator <- function(data, detail = FALSE) {
    promoters <- length(data[data >= 9])
    passives <- length(data[data %in% c(7, 8)])
    detractors <- length(data[data <= 6])
    n <- length(data)
    score <- promoters / n - detractors / n
    if (detail) {
        summary <- list("promoters: " = promoters, "passives: " = passives, "detractors: " = detractors)
        return(c(summary, score))
    } else {
        return(score)
    }
}
