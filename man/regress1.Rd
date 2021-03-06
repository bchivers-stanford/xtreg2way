% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/regress1.R
\name{regress1}
\alias{regress1}
\title{Regression}
\usage{
regress1(y, X)
}
\arguments{
\item{y}{The dependent variable}

\item{X}{A matrix or vector of independent variable(s)}
}
\value{
A list which contains X'X, the returned coefficients beta, and residuals res
}
\description{
\code{regress1} performs an OLS regression based on the projected variables y and X.
}
\examples{
hhid <- c("a","b","c","a","b","c" ,"a","b","c" ,"a","b","c" ,"a","b","c")
tid <- c("1","1" ,"1" ,"2","2" ,"3","3","3" ,"4","4","5" ,"5","6","6" ,"6")
w <- rep(1, 15)
x1 <- rnorm(15, mean=50, sd=10)   
x2 <- rnorm(15, mean=50, sd=10)
y <- x1 + rnorm(15, mean=50, sd=10)

struc <- projdummies(hhid, tid, w)
projvar_list <- projvar(x1, struc)
x1p <- projvar_list$var
projvar_list <- projvar(x2, struc)
x2p <- projvar_list$var
projvar_list <- projvar(y, struc)
yp <- projvar_list$var

reg <- regress1(yp, data.frame(x1p,x2p))
}
