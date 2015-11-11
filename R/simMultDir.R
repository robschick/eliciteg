#' simMultDir - creates multiple Dirichlet distributions
#'
#' @param n A number corresponding to the number of distributions to generate.
#' @param vec A vector of parameter values for the Dirichlet
#' @examples
#' makeDir(1, c(2, 4, 3))
#' makeDir(2, c(2, 4, 3))
makeDir <- function(n, vec){
  rdirichlet(n, vec)
}

