% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/treesim.R
\name{treesim}
\alias{treesim}
\title{Simulate trees with fixed number of sampled taxa and trait prevalance}
\usage{
treesim(pars, N0, N1, sampling.f, max.t = Inf)
}
\arguments{
\item{pars}{a vector of parameters that describe the macroevolutionary processes of the tree.  Parameters are in order of speciation rate for trait state 0, speciation rate for trait state 1, extinction rate for trait state 0, extinction rate for trait state 1, transition rate from state 0 to state 1, transition rate from state 1 to state 0.}

\item{N0}{the number of sampled taxa with trait state 0.}

\item{N1}{the number of sampled taxa with trait state 1.}

\item{sampling.f}{a vector of sampling fraction of taxa with trait state 0 and trait state 1.}

\item{max.t}{the maximum amount of time, above which tree simulation stops and reports the tree as not being able to coalesce.}
}
\description{
This function generates a tree that contains a defined number of sampled taxa for each of the two trait states.
}
\examples{
phy <- treesim(pars=c(0.1,0.1,0.05,0.05,0.1,0.1),N0=50,N1=50,sampling.f=c(1,1),max.t=Inf) 
}

