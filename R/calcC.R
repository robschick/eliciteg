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
