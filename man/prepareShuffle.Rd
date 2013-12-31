\name{prepareShuffle}
\alias{prepareShuffle}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Prerprocess for the shuffle estimator
}
\description{
prepareShuffle computes the averaging matrices and normalizing constants for the shuffle estimator. 
It can be run once for all data vectors sharing the design. 
}
\usage{
prepareShuffle(des, perm)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{des}{A design vector or matrix
}
  \item{perm}{
The shuffling permutation
}
}
\value{
\item{m}{The number of treatments}
\item{ns}{An m-length vector with the number of repeats for each treatment. For balanced designs with n repeats, ns=rep(n,m)}
\item{B}{The averaging matrix according to the design}
\item{G}{1/T for T the number of measurements}
\item{norm}{The value by which to correct the difference of variances [1/(facA-facB)]}
\item{facA}{The signal coefficient of the original design}
\item{facB}{The signal variance coefficient of the permuted design}
}
\references{
Benjamini and Yu (2013)
}
\author{
Yuval Benjamini
}
\seealso{
getAverage
getNormalizer
}
%\examples{
%}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
