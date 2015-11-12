#' splitBeta - takes multiple Beta distributions and splits them evenly into one Dirichlet
#'
#' @param alpha A number corresponding to the first parameter of the Beta distribution
#' @param beta A number corresponding to the second parameter of the Beta distribution
#' @param n the number of Dirichlet distributions to split the Beta into
#'
#' @description \code{splitBeta} is used to take the single Beta distribution returned by the experts in the Right Whale movement elicitation into multiple Dirchlet distributions. The purpose is that for the sake of expediency we collapsed several transitions into on transition, so experts only had to answer a single question.
