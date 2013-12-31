\name{shuffle-package}
\alias{shuffle-package}
\alias{shuffle}
\docType{package}
\title{
The Shuffle Estimator for Explainable Variance }
\description{
This package implements the algorithms underlying the shuffle estimators, variance 
estimators for one-way analysis of variance designs. The estimators can overcome correlated noise 
by recomputing the mean-square-between statistics on a permuted version of the data. 
The permutations should preserve the noise covariance matrix, but a parametric model for the noise covariance is not necessary. For more details see Benjamini and Yu, and here \url{http://statweb.stanford.edu/~yuvalben } \cr
Two functions implement the important stages of estimation:\cr
prepareShuffle(design_vec, premutation), which preprocess the design and computes the normalization constant for a given permutation.\cr
estimateShuffle(response_vec, prepare), which estimates variances and effect sizes for a specific data vector.
 }
\details{
\tabular{ll}{
Package: \tab shuffle\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2013-12-31 \cr
License: \tab GPL (>= 2) \cr
}
}
\author{
Yuval Benjamini <yuvalben@stanford.edu>
}
\references{
Benjamini and Yu (2013), "The shuffle estimator for explainable variance in fMRI experiments", Annals of Applied Statistics 7 (4) \url{http://projecteuclid.org/euclid.aoas/1387823308}
}
\keyword{ package }
\examples{
data(design_vec,fMRI_responses,prediction_res)

# Make example shorter - for paper example use T = ncol(fMRI_responses)
T = 156*4
fMRI_responses_sm = fMRI_responses[,1:T]
design_sm = design_vec[1:T]
permutation = rev(1:T)

prep_shuffle = prepareShuffle(design_sm,permutation)

var_explained = numeric(nrow(fMRI_responses_sm))
for (i in 1:nrow(fMRI_responses_sm)) {
    var_explained[i] = estimateShuffle(fMRI_responses_sm[i,],prep_shuffle)$effect
}

plot(var_explained, pmax(prediction_res,0)^2,
		    xlim = c(0,0.7), ylim = c(0,0.7), 
		    xlab = "Explainable variance", ylab = "Corr^2") 
abline(0,1,col=4)
}
\keyword{nonparametric}
\keyword{design}