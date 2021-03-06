% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/simMultDir.R
\name{makeDir}
\alias{makeDir}
\title{simMultDir - creates multiple Dirichlet distributions.}
\usage{
makeDir(n, vec)
}
\arguments{
\item{n}{A number corresponding to the number of distributions to generate.}

\item{vec}{A vector of parameter values for the Dirichlet}
}
\description{
simMultDir - creates multiple Dirichlet distributions.
}
\examples{
makeDir(1, c(2, 4, 3))
makeDir(2, c(2, 4, 3))
}
\seealso{
Note that this loads the \code{gtools} package for the \code{rdirichlet} function.
}

