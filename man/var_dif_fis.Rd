% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/var_dif_fis.R
\name{var_dif_fis}
\alias{var_dif_fis}
\title{var_dif_fis}
\usage{
var_dif_fis(n, r, rho)
}
\arguments{
\item{n}{A numerical value specifying the total sample size of a primary study}

\item{r}{A numerical value specifying the Pearson correlation coefficient 
between variables h and m (see Details)}

\item{rho}{A numerical value specifying the Pearson correlation coefficient 
between variables l and h and variables h and m (see Details)}
}
\value{
The \code{var_dif_fis} function returns a numerical value that is the 
variance of the difference of two overlapping Fisher-z transformed correlations 
given n, r, and rho.
}
\description{
Function for computing the variance of the difference between two overlapping 
Fisher-z transformed correlation coefficients.
}
\details{
In case of three variables (l, h, and m), overlapping Fisher-z 
transformed correlation coefficients can be computed between variables l and h 
and variables l and m. The function computes the variance of the difference 
between these two overlapping Fisher-z transformed correlations. For a derivation 
of this variance see van Aert & Wicherts (2023).

The variance that is computed with this function can be used to correct for 
outcome reporting bias by including the variance as a moderator in a 
(multivariate) meta-analysis. Please see van Aert & Wicherts (2023) for 
more information.
}
\examples{
### Compute variance for an artificial example
var_dif_fis(n = 100, r = 0.3, rho = 0.5)

}
\references{
van Aert, R.C.M. & Wicherts, J.M. (2023). Correcting for outcome 
reporting bias in a meta-analysis: A meta-regression approach. Behavior Research
Methods.
}
\author{
Robbie C.M. van Aert \email{R.C.M.vanAert@tilburguniversity.edu}
}
