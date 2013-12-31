\name{MSbetAvg}
\alias{MSbetAvg}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Calculate Mean-square-between
}
\description{
MSbetAvg calculates the mean-square-between contrast according to the design vector.
Responses for each condition are averaged, and the sample variance is calculated for these averages. 
}
\usage{
MSbetAvg(dat, avgmat)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dat}{
The vector of measurements on which the constrast is computed. 
}
  \item{avgmat}{
The design parameters, as extracted by getAveraging(). 
}
}
\value{
The value of the quadratic contrast computed on the data vector.
}
\examples{
data(fMRI_responses,design_vec)

msbet = MSbetAvg(fMRI_responses[1,], getAveraging(design_vec))

# Compute same value using "aov" when design is balanced ... 
ns =tapply(design_vec,design_vec, length)
# (check that design is balanced)
stopifnot(length(unique(ns))==1)

m = length(unique(design_vec))

aov_sum = summary(aov(fMRI_responses[1,] ~ factor(design_vec)))
ss_bet = aov_sum[[1]][1,2]
# In unbalanced designs, each example should require more care...
msbet_aov = (ss_bet / ns[1] )/(m-1) 

cat(msbet, msbet_aov)

}
\author{
Yuval Benjamini
}
