\name{getAveraging}
\alias{getAveraging}
\title{
Convert design into averaging matrices.
}
\description{
getAveraging(des) converts a design (either a vector or a matrix) 
into averaging matrix notation (from the paper).  
For a response vector Y, (B Y)[t] is the mean of all responses corresponding to the treatment at time t, 
and (B-G)Y [t] is the averaged-removed treatment mean. 
}
\usage{
getAveraging(des)
}
\arguments{
  \item{des}{
Either a vector or a matrix representation of design (see designVec2Mat and designMat2Vec). 
  }
}
\value{
A list with components
\item{m}{The number of treatments}
\item{ns}{An m-length vector with the number of repeats for each treatment. For balanced designs with n repeats, ns=rep(n,m)}
\item{B}{The averaging matrix according to the design}
\item{G}{1/T for T the number of measurements}
}
\references{
Benjamini and Yu (2013).
}
\author{
Yuval Benjamini
}
\examples{
data(design_vec)

design_avg = getAveraging(design_vec)
rand_resp = rnorm(length(design_vec))

global_mean = mean(rand_resp[design_vec != 0 ])
first_treatment_mean=  mean(rand_resp[design_vec == design_vec[1]])
cat((design_avg$B \%*\% rand_resp)[1], first_treatment_mean )

cat(((design_avg$B-design_avg$G) \%*\% rand_resp)[1], first_treatment_mean- global_mean)
}
