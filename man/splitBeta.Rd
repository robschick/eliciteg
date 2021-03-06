% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/splitBeta.R
\name{splitBeta}
\alias{splitBeta}
\title{splitBeta - takes multiple Beta distributions and splits them evenly into one Dirichlet}
\usage{
splitBeta(n, m, nreg)
}
\arguments{
\item{n}{A number corresponding to the first parameter of the Beta distribution; this corresponds to the confidence parameter: inputConfRaw}

\item{m}{A number corresponding to the second parameter of the Beta distribution; this corresponds to the # of whales / 100, e.g. moveNortherntoMIDA / 100}

\item{nreg}{the number of Dirichlet distributions to split the Beta into; this corresponds to the number of regions}
}
\description{
\code{splitBeta} is used to take the single Beta distribution returned by the experts in the Right Whale movement elicitation into multiple Dirchlet distributions. The purpose is that for the sake of expediency we collapsed several transitions into on transition, so experts only had to answer a single question.
}

