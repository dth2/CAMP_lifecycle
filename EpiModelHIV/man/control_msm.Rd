% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/params.R
\name{control_msm}
\alias{control_msm}
\title{Epidemic Model Control Settings}
\usage{
control_msm(simno = 1, nsims = 1, ncores = 1, nsteps = 100, start = 1,
  initialize.FUN = initialize_camplc, aging.FUN = aging_camplc,
  deaths.FUN = deaths_msm, births.FUN = births_camplc,
  outdebut.FUN = out_debut_camplc, test.FUN = test_msm, tx.FUN = tx_msm,
  prep.FUN = prep_msm, prep2.FUN = prep_adol, progress.FUN = progress_msm,
  vl.FUN = vl_msm, aiclass.FUN = NULL, roleclass.FUN = NULL,
  role.classtrans = roleclass_trans, resim_nets.FUN = simnet_msm,
  disclose.FUN = disclose_msm, acts.FUN = acts_msm,
  condoms.FUN = condoms_msm, riskhist.FUN = riskhist_msm,
  riskhistasmm.FUN = riskhist_adol, position.FUN = position_msm,
  trans.FUN = trans_msm, prev.FUN = prevalence_msm,
  verbose.FUN = verbose_msm, save.nwstats = FALSE, save.other = c("attr",
  "temp", "riskh", "el", "p"), verbose = TRUE, verbose.int = 1, ...)
}
\arguments{
\item{simno}{Unique ID for the simulation run, used for file naming purposes
if used in conjunction with the \code{EpiModelHPC} package.}

\item{nsims}{Number of simulations.}

\item{ncores}{Number of cores per run, if parallelization is used within the
\code{EpiModelHPC} package.}

\item{nsteps}{Number of time steps per simulation.}

\item{start}{Starting time step for simulation, with default to 1 to run new
simulation. This may also be set to 1 greater than the final time
step of a previous simulation to resume the simulation with different
parameters.}

\item{initialize.FUN}{Module function to use for initialization of the epidemic
model.}

\item{aging.FUN}{Module function for aging.}

\item{deaths.FUN}{Module function for general and disease-realted deaths.}

\item{births.FUN}{Module function for births or entries into the population.}

\item{outdebut.FUN}{Module for outing into the population and debuting as sexually available}

\item{test.FUN}{Module function for diagnostic disease testing.}

\item{tx.FUN}{Module function for ART initiation and adherence.}

\item{prep.FUN}{Module function for PrEP initiation and utilization.}

\item{progress.FUN}{Module function for HIV disease progression.}

\item{vl.FUN}{Module function for HIV viral load evolution.}

\item{aiclass.FUN}{Module function for one-off AI risk class transitions.}

\item{roleclass.FUN}{Module function for transitions in sexual roles.}

\item{resim_nets.FUN}{Module function for network resimulation at each time
step.}

\item{disclose.FUN}{Module function for HIV status disclosure.}

\item{acts.FUN}{Module function to simulate the number of sexual acts within
partnerships.}

\item{condoms.FUN}{Module function to simulate condom use within acts.}

\item{riskhist.FUN}{Module function to calculate risk history for uninfected
persons in the population.}

\item{riskhistasmm.FUN}{Module function to calculate simplified risk history for uninfected
persons in the population.}

\item{position.FUN}{Module function to simulate sexual position within acts.}

\item{trans.FUN}{Module function to stochastically simulate disease transmission
over acts given individual and dyadic attributes.}

\item{prev.FUN}{Module function to calculate prevalence summary statistics.}

\item{verbose.FUN}{Module function to print model progress to the console or
external text files.}

\item{save.nwstats}{Calculate and save network statistics as defined in the
\code{simnet} modules.}

\item{save.other}{Character vector containing other list elements of \code{dat}
to save.}

\item{verbose}{If \code{TRUE}, print out simulation progress to the console
if in interactive mode or text files if in batch mode.}

\item{verbose.int}{Integer specifying the interval between time steps at which
progress is printed.}

\item{...}{Additional arguments passed to the function.}

\item{roleclasstrans.FUN}{Module function for transitioning the I,R,V distribution from asmm to MSM.}
}
\value{
A list object of class \code{control_msm}, which can be passed to the
EpiModel function \code{netsim}.
}
\description{
Sets the controls for stochastic network models simulated with
             \code{\link{netsim}}.
}
\keyword{msm}
