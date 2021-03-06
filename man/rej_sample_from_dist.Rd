% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/parametric-sampling.R
\name{rej_sample_from_dist}
\alias{rej_sample_from_dist}
\title{Parametric Rejection Sampling}
\usage{
rej_sample_from_dist(distribution, param_list, type = "MC", lower = -Inf,
  upper = Inf)
}
\arguments{
\item{distribution}{- name of distribution from which to sample}

\item{param_list}{list or vector of parameters for distribution}

\item{type}{"MC" for Monte Carlo or "LH" for Latin Hypercube}

\item{lower}{lower bound for samples}

\item{upper}{upper bound for samples}
}
\value{
function taking int > 0 returning samples from specified distribution
  with parameters with bounds
}
\description{
Parametric Rejection Sampling
}
\examples{
   rej_sample_from_dist("normal", list(mean = 0, sd = 1))(10)
   rej_sample_from_dist("normal", type = "LH",  c(0,1), lower = -1, upper = 1)(10)
}

