#' Calculate c values for use in the choosing of an experts' prior
#'
#' This function calculates c weights that are the first step in
#' choosing an individual expert's prior prior to sampling
#' from the Dirichlet distribution within the Gibbs loop
#'

calcC <- function(data, prior){

  dd <- as.vector(data)
  pp <- as.vector(prior)
  if(length(dd) != length(pp)) stop('Data and prior lengths do not match')

  logc <- lgamma(sum(pp)) - sum(lgamma(pp)) - (lgamma(sum(pp + data)) - sum(lgamma(pp + data)))

  return(exp(logc))
}


#' Calculate k probability vector for use in choosing of an experts' prior
#'
#' The goal of this function is to pull in all the output from \code{calcC}
#' to return a K probability vector. This vector will then be used in
#' conjunction with \code{rmultinom()} to choose an expert's prior, $k_i$.
#'
calcK <- function(cdat){
  numexp <- length(unlist(cdat))
  up <- (1 / numexp) * unlist(cdat)
  down <- (1 / numexp) * sum(unlist(cdat))
  up / down
}
