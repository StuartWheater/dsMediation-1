% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/neImputeDS.R
\name{neImputeDS}
\alias{neImputeDS}
\title{Expand the dataset and impute nested counterfactual outcomes}
\usage{
neImputeDS(object, nMed)
}
\arguments{
\item{object}{a string character, the name of an object used to select a method.}

\item{nMed}{an integer, the number of mediators to be considered jointly. For example,
if nMed = 2, not only the second predictor variable, but the two predictor
variables declared after the exposure variable are internally coded as mediators.
Correct specification of the (number of) mediators can easily be checked in the summary
output of the natural effect model object (returned by \code{ds.neModel} function), 
which lists the names of the exposure and all mediators. Default value of nMed is set
to 1.}
}
\value{
a data frame of class c("data.frame", "expData", "impData") is assigned at
the server-side of each study.
}
\description{
This function is similar to R function \code{neImpute} from the 
\code{mmedflex} package.
}
\details{
The function 'neImpute' both expands the data along hypothetical exposure
values and imputes nested counterfactual outcomes.
}
\author{
Demetris Avraam, for DataSHIELD Development Team
}
