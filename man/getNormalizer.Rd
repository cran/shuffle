\name{getNormalizer}
\alias{getNormalizer}
\title{
getNormalizer
}
\description{
Computes the normalizer 1/(1-alpha) for a given design and permutation. 
The shuffle estimator is [MSbet(Y) - MSbet(PY)]*normalizer. \\
We prefer the normalizer to be close to 1.
}
\usage{
getNormalizer(avgmat, perm)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{avgmat}{
The output of getAveraging.
}
  \item{perm}{
The shuffling permutation.
}
}
\details{
Under balanced designs, the normalizer = 1/[1-alpha]. More generally, 
we call facA = 1 and facB = alpha(design, permutation).
}
\value{
\item{norm}{The value by which to correct the difference of variances [1/(facA-facB)]}
\item{facA}{The signal coefficient of the original design, should be 1}
\item{facB}{The signal variance coefficient of the permuted design}
}
\references{
Benjamini and Yu (2013). 
}
\author{
Yuval Benjamini 
}

\examples{

data(design_vec)

# Make example shorter - for paper example use T = ncol(fMRI_responses) = 156*10
T = 156*4
design_sm = design_vec[1:T]

identity_perm = 1:T
reverse_perm = rev(identity_perm)
shift_perm = c(2:T, 1)

design_avg = getAveraging(design_sm)
identity_norm = getNormalizer(design_avg, identity_perm)
print('For the identity, we cannot get an estimator')
print(sprintf('facA(1) \%.3f, facB(alpha) \%.3f, normalizer \%.3f ', 
		    identity_norm$facA, identity_norm$facB, identity_norm$norm))

reverse_norm = getNormalizer(design_avg, reverse_perm)
print('For the reverse, we get a normalizer close to 1 ')
print(sprintf('facA(1) \%.3f, facB(alpha) \%.3f, normalizer \%.3f ', 
		    reverse_norm$facA, reverse_norm$facB, reverse_norm$norm))

shift_norm = getNormalizer(design_avg, shift_perm)
print('The shift mixes across blocks. The normalizer is smaller, but assumptions may not hold')
print(sprintf('facA(1) \%.3f, facB(alpha) \%.3f, normalizer \%.3f ', 
		    shift_norm$facA, shift_norm$facB, shift_norm$norm))

}
