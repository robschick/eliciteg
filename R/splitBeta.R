#' splitBeta - takes multiple Beta distributions and splits them evenly into one Dirichlet
#'
#' @param n A number corresponding to the first parameter of the Beta distribution; this corresponds to the confidence parameter: inputConfRaw
#' @param m A number corresponding to the second parameter of the Beta distribution; this corresponds to the # of whales / 100, e.g. moveNortherntoMIDA / 100
#' @param nreg the number of Dirichlet distributions to split the Beta into; this corresponds to the number of regions
#'
#' @description \code{splitBeta} is used to take the single Beta distribution returned by the experts in the Right Whale movement elicitation into multiple Dirchlet distributions. The purpose is that for the sake of expediency we collapsed several transitions into on transition, so experts only had to answer a single question.
splitBeta <- function(n, m, nreg) {

    expBeta1a <- (n * m) / nreg
    expBeta1b <- (n - (n * m)) / nreg
    list(b1 = expBeta1a, b2 = expBeta1b)

}
