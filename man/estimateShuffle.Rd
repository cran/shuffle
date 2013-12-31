\name{estimateShuffle}
\alias{estimateShuffle}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Calculate the shuffle estimators
}
\description{
estimateShuffle estimates the following quantities for a response vector:
the signal variance (signalVar), the noise variance (noiseVar), the total variance (YVar), 
and the explainable variance (effect). Inputs to the function are the response vector, and 
a preprocessing structure (the output of prepareShuffle) which holds the design, the shuffle permutation, and 
the calculated normalizer. 
}
\usage{
estimateShuffle(dat, prep, neg = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dat}{
A vector of reponses - should be of the same size as the design vector and the shuffle permutation.
}
  \item{prep}{
The output of prepareShuffle; includes the design, the shuffling permuation, and a normalizer. 
}
  \item{neg}{
If neg=FALSE does not allow the signal variance to get arbitrary negative values,
but instead sets signal variance to -1e-05.}
}
\details{
estimateShuffle compares the mean-square-between of the data
to the mean-square-between of the permuted data, the difference being the scaled noise variance. 
Effect size is the ratio between the estimated signal data and the estimated total variance. 
}
\value{
\item{signalVar}{The estimated variance of the signal}
\item{noiseVar}{The estimated variance of the noise}	    
\item{YVar}{The estimated total variance}
\item{effect}{The proportion of explainable variance (signalVar/Yvar)}  
}
\references{
Benjamini and Yu (2013), "The shuffle estimator for explainable variance in fMRI experiments". 
}
\author{Yuval Benjamini}
