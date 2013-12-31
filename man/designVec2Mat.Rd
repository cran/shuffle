\name{designVec2Mat}
\alias{designVec2Mat}
\alias{designMat2Vec}
\alias{perm2Mat}
\title{
Convert between a vector and matrix representation of the design
}
\description{
Convert between representations of a one-way anova with $m$ treatments and $T$ measurements.
The vector representation is a T-length integer vector with m distinct integers. The matrix representation is a T by m matrix with a 1 at i,j indicating the 
i'th measurement belongs to the j'th treatment. 
}
\usage{
designVec2Mat(desvec)
designMat2Vec(desmat)
perm2Mat(perm)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{desvec,perm}{An integer vector of length T with m distinct non-zero integers. 0 indicates measurements should be discarded.}
  \item{desmat}{A 0-1 matrix with T rows, m columns.} 
}
\author{
Yuval Benjamini
}
\note{
designVec2Mat() is called within getAveraging .
}

%\examples{]
\keyword{internal}