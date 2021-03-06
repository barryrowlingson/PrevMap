% Generated by roxygen2 (4.0.2): do not edit by hand
\name{trace.plot}
\alias{trace.plot}
\title{Trace-plots for posterior samples}
\usage{
trace.plot(object, param, component.beta = NULL, component.S = NULL)
}
\arguments{
\item{object}{an object of class 'Bayes.PrevMap'.}

\item{param}{a character indicating for which component of the model the density plot is required: \code{param="beta"} for the regression coefficients; \code{param="sigma2"} for the variance of the spatial random effect; \code{param="phi"} for the scale parameter of the Matern correlation function; \code{param="tau2"} for the variance of the nugget effect; \code{param="S"} for the spatial random effect.}

\item{component.beta}{if \code{param="beta"}, \code{component.beta} is a numeric value indicating the component of the regression coefficients; default is \code{NULL}.}

\item{component.S}{if \code{param="S"}, \code{component.S} can be a numeric value indicating the component of the spatial random effect. Default is \code{NULL}.}

\item{...}{additional parameters to pass to \code{\link{density}}.}
}
\description{
Displays the trace-plots for the posterior samples of the model parameters and spatial random effects.
}
\author{
Emanuele Giorgi \email{e.giorgi@lancaster.ac.uk}

Peter J. Diggle \email{p.diggle@lancaster.ac.uk}
}

