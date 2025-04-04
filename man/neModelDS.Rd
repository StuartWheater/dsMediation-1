% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/neModelDS.R
\name{neModelDS}
\alias{neModelDS}
\title{Fit a natural effect model}
\usage{
neModelDS(formula, family, expData, se, nBoot, newobj)
}
\arguments{
\item{formula}{a formula object providing a symbolic description of the 
natural effect model.}

\item{family}{aa description of the error distribution and link function to be
used in the model. For glm this can be a character string naming a family 
function, a family function or the result of a call to a family function. 
For glm.fit only the third option is supported.}

\item{expData}{the expanded dataset (of class "expData").}

\item{se}{character string indicating the type of standard errors to be calculated.
The default type is based on the bootstrap.}

\item{nBoot}{number of bootstrap replicates.}

\item{newobj}{a character string that provides the name for the output object
that is stored on the data servers. Default \code{neModel.out}.}
}
\value{
a list with (i) the summary table of the object of class 'neModel' and 
(ii) the variance-covariance matrix (if se = "robust").
}
\description{
This function is similar to R function \code{neModel} from the

This function is similar to R function \code{neModel} from the 
\code{medflex} package.
}
\details{
The function 'neModelDS' is used to fit a natural effect model on the
expanded dataset.
}
\author{
Demetris Avraam, for DataSHIELD Development Team
}
