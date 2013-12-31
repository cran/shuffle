\name{fMRI_responses}
\alias{fMRI_responses}
\docType{data}
\title{
Responses for 30 voxels (of V1) to 1560 stimuli.
}
\description{
A 30x1560 data matrix consisting of a sample of 30 fMRI responses from the visual cortex V1 of a human subject, 
to a sequence of natural images. The treatment index is found in design_vec. 
 }
\usage{data(fMRI_responses)}
\format{
A 30x1560 matrix of real values. Each row corresponds to a different voxel. 
}
\details{
Measurement were recorded as a person was watching a sequence of natural images.
Each column corresponds to a displayed image; 
each row corresponds to the response of a single voxel in the fMRI scan.
This data consists of a small subset of the voxels in V1 from the original scans. 
The data was recorded in the Gallant lab at UC Berkeley.}
\source{
Kay, Naselaris, Prenger and Gallant (2008), "Identifying natural images from human brain activity" 
}
\references{
Benjamini and Yu (2013), "The shuffle estimator for explainable variance in fMRI experiments"}
\keyword{datasets}
