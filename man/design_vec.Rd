\name{design_vec}
\alias{design_vec}
\docType{data}
\title{
The design for an fMRI experiment
}
\description{
The design vector for the validation data in an fMRI experiment.
At time t the image design_vec[t] was shown. 
}
\usage{data(design_vec)}
\format{
  The format is:
 num [1:1560] 2 3 6 1 11 2 2 7 2 10 ...
}
\details{
The design vector for the validation data in an fMRI experiment.
The experiment consisted of 1560 timeframes, 120 images each repeated 13 times. 
The imshrd were organized into 10 separate blocks, each repeating 12 images.
}
\source{
Kay, Naselaris, Prenger and Gallant (2008), "Identifying natural images from human brain activity"
}
\references{
Benjamini and Yu (2013), "The shuffle estimator for explainable variance"
}
\examples{
data(design_vec)
plot(design_vec,xlab = "event", ylab = "treatment", main="Design of the full experiment" )

plot(design_vec[1:120],xlab = "event",ylab= "treatment",main="Design of a single block")
}
\keyword{datasets}
