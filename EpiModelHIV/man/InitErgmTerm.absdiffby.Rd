% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ErgmTerms.R
\name{InitErgmTerm.absdiffby}
\alias{InitErgmTerm.absdiffby}
\title{Definition for absdiffby ERGM Term}
\usage{
InitErgmTerm.absdiffby(nw, arglist, ...)
}
\arguments{
\item{nw}{An object of class \code{network}.}

\item{arglist}{A list of arguments as specified in the \code{ergm.userterms}
package framework.}

\item{...}{Additional data passed into the function as specified in the
\code{ergm.userterms} package framework.}
}
\description{
This function defines and initialize the absdiffby ERGM term
             that allows for targeting age homophily by sex.
}
\details{
This ERGM user term was written to allow for age-based homophily in partnership
formation that is asymetric by sex. The absdiff component targets age homophily
while the by component allows that to be structed by a binary attribute such
as "male", in order to enforce an offset in the average difference.
}
