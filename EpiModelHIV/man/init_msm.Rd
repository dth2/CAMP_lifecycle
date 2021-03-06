% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/params.R
\name{init_msm}
\alias{init_msm}
\title{Epidemic Model Initial Conditions}
\usage{
init_msm(nwstats, prev.B = 0.253, prev.W = 0.253, prev.asmm = 0.07, ...)
}
\arguments{
\item{nwstats}{Target statistics for the network model. An object of class
\code{nwstats} output from \code{\link{calc_nwstats_msm}}.}

\item{prev.B}{Initial disease prevalence among black MSM.}

\item{prev.W}{Initial disease prevalence among white MSM.}

\item{...}{Additional arguments passed to function.}
}
\value{
A list object of class \code{init_msm}, which can be passed to EpiModel
function \code{\link{netsim}}.
}
\description{
Sets the initial conditions for a stochastic epidemic models
             simulated with \code{\link{netsim}}.
}
\keyword{msm}
