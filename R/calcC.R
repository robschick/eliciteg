#' Calculate raw c values for use in the choosing of an experts' prior
#'
#' This function calculates raw, i.e. logged c weights that are the first
#' step in choosing an individual expert's prior prior to sampling
#' from the Dirichlet distribution within the Gibbs loop.
#'

calcC <- function(data, prior){

  dd <- as.vector(data)
  pp <- as.vector(prior)
  if(length(dd) != length(pp)) stop('Data and prior lengths do not match')

  logc <- lgamma(sum(pp)) - sum(lgamma(pp)) - (lgamma(sum(pp + data)) - sum(lgamma(pp + data)))

  return(logc)
}

#' Tranform c matrix and return exponentiated values
#'
#' This function takes in the c matrix from the \code{calcC}
#' function, checks to make sure the values aren't below a
#' threshold (default value -600), and returns the exponentiated
#' values. If the values are are below -600, then it adds a scalar.
#' This scalar preserves the relationship between the values, which
#' represent the prior beliefs of individual experts
transformC <- function(cmat, tval = -600){

  tvec <- apply(cmat, 2, function(x) all(x < tval))

  if(any(tvec)){

    cfudge <- -apply(cmat[, tvec], 2, max)
    cmat[, tvec] <- sweep(cmat[, tvec], 2, cfudge, FUN = '+')

  }
  return(exp(cmat))
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
