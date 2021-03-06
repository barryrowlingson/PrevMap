% Generated by roxygen2 (4.0.2): do not edit by hand
\name{control.mcmc.Bayes}
\alias{control.mcmc.Bayes}
\title{Control settings for the MCMC algorithm used for Bayesian inference}
\usage{
control.mcmc.Bayes(n.sim, burnin, thin, h.theta1, h.theta2, h.theta3 = NULL,
  L.S.lim, epsilon.S.lim, start.beta, start.sigma2, start.phi, start.S,
  start.nugget = NULL, c1.h.theta1 = 0.01, c2.h.theta1 = 1e-04,
  c1.h.theta2 = 0.01, c2.h.theta2 = 1e-04, c1.h.theta3 = 0.01,
  c2.h.theta3 = 1e-04, linear.model = FALSE)
}
\arguments{
\item{n.sim}{total number of simulations.}

\item{burnin}{initial number of samples to be discarded.}

\item{thin}{value used to retain only evey \code{thin}-th sampled value.}

\item{h.theta1}{starting value of the tuning parameter of the proposal distribution for \eqn{\theta_{1} = \log(\sigma^2)/2}. See 'Details' in \code{\link{binomial.logistic.Bayes}} or \code{\link{linear.model.Bayes}}.}

\item{h.theta2}{starting value of the tuning parameter of the proposal distribution for \eqn{\theta_{2} = \log(\sigma^2/\phi^{2 \kappa})}. See 'Details' in \code{\link{binomial.logistic.Bayes}} or \code{\link{linear.model.Bayes}}.}

\item{h.theta3}{starting value of the tuning parameter of the proposal distribution for \eqn{\theta_{3} = \log(\tau^2)}. See 'Details' in \code{\link{binomial.logistic.Bayes}} or \code{\link{linear.model.Bayes}}.}

\item{L.S.lim}{an atomic value or a vector of length 2 that is used to define the number of steps used at each iteration in the Hamiltonian Monte Carlo algorithm to update the spatial random effect; if a single value is provided than the number of steps is kept fixed, otherwise if a vector of length 2 is provided the number of steps is simulated at each iteration as \code{floor(runif(1,L.S.lim[1],L.S.lim[2]+1))}.}

\item{epsilon.S.lim}{an atomic value or a vector of length 2 that is used to define the stepsize used at each iteration in the Hamiltonian Monte Carlo algorithm to update the spatial random effect; if a single value is provided than the stepsize is kept fixed, otherwise if a vector of length 2 is provided the stepsize is simulated at each iteration as \code{runif(1,epsilon.S.lim[1],epsilon.S.lim[2])}.}

\item{start.beta}{starting value for the regression coefficients \code{beta}.}

\item{start.sigma2}{starting value for \code{sigma2}.}

\item{start.phi}{starting value for \code{phi}.}

\item{start.S}{starting value for the spatial random effect.}

\item{start.nugget}{starting value for the variance of the nugget effect; default is \code{NULL} if the nugget effect is not present.}

\item{c1.h.theta1}{value of \eqn{c_{1}} used to adaptively tune the variance of the Gaussian proposal for the transformed parameter \code{log(sigma2)/2}; see 'Details' in \code{\link{binomial.logistic.Bayes}} or \code{\link{linear.model.Bayes}}.}

\item{c2.h.theta1}{value of \eqn{c_{2}} used to adaptively tune the variance of the Gaussian proposal for the transformed parameter \code{log(sigma2)/2}; see 'Details' in \code{\link{binomial.logistic.Bayes}} or \code{\link{linear.model.Bayes}}.}

\item{c1.h.theta2}{value of \eqn{c_{1}} used to adaptively tune the variance of the Gaussian proposal for the transformed parameter \code{log(sigma2.curr/(phi.curr^(2*kappa)))}; see 'Details' in \code{\link{binomial.logistic.Bayes}} or \code{\link{linear.model.Bayes}}.}

\item{c2.h.theta2}{value of \eqn{c_{2}} used to adaptively tune the variance of the Gaussian proposal for the transformed parameter \code{log(sigma2.curr/(phi.curr^(2*kappa)))}; see 'Details' in \code{\link{binomial.logistic.Bayes}} or \code{\link{linear.model.Bayes}}.}

\item{c1.h.theta3}{value of \eqn{c_{1}} used to adaptively tune the variance of the Gaussian proposal for the transformed parameter \code{log(tau2)}; see 'Details' in \code{\link{binomial.logistic.Bayes}} or \code{\link{linear.model.Bayes}}.}

\item{c2.h.theta3}{value of \eqn{c_{2}} used to adaptively tune the variance of the Gaussian proposal for the transformed parameter \code{log(tau2)}; see 'Details' in \code{\link{binomial.logistic.Bayes}} or \code{\link{linear.model.Bayes}}.}

\item{linear.model}{logical; if     \code{linear.model=TRUE}, the control parameters are considered for the geostatistical linear model. Default is \code{linear.model=FALSE}.}
}
\value{
an object of class "mcmc.Bayes.PrevMap".
}
\description{
This function defines the different tuning parameter that are used in the MCMC algorithm for Bayesian inference.
}
\author{
Emanuele Giorgi \email{e.giorgi@lancaster.ac.uk}

Peter J. Diggle \email{p.diggle@lancaster.ac.uk}
}

