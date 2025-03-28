#'
#' @title Estimation and Sensitivity Analysis for Multiple Causal Mechanisms
#' @description This function is similar to R function \code{multimed} from the 
#' \code{mediation} package.
#' @details The function 'multimed' is used for causal mediation analysis when
#' post-treatment mediator-outcome confounders, or alternative mediators causally
#' preceding the mediator of interest, exist in the hypothesized causal mechanisms.
#' It estimates the average causal mediation effects (indirect effects) and the
#' average direct effects under the homogeneous interaction assumption based on a
#' varying-coefficient linear structural equation model. The function also performs
#' sensitivity analysis with respect to the violation of the homogenous interaction
#' assumption. The function can be used for the single experiment design.
#' @param outcome a string character, the name of the outcome variable in 'data'.
#' @param med.main a string character, the name of the mediator of interest. Under
#' the parallel design this is the only mediator variable used in the estimation.
#' @param med.alt.transmit vector of character strings indicating the names of the 
#' post-treatment confounders, i.e., the alternative mediators affecting both the
#' main mediator and outcome.
#' @param treat a string character, the name of the treatment variable in 'data'.
#' @param covariates.transmit vector of character strings representing the names of the
#' pre-treatment covariates.
#' @param data a string character, the name of data frame containing all the 
#' above variables.
#' @param sims a number of bootstrap samples used for the calculation of 
#' confidence intervals.
#' @param conf.level level to be used for confidence intervals.
#' @param seed a number of a seed random number generator. Default value is NULL.
#' @return a summary table of the object of class 'multimed'
#' @author Demetris Avraam, for DataSHIELD Development Team
#' @export
#'
multimedDS <- function(outcome, med.main, med.alt.transmit, treat, 
                       covariates.transmit, data, sims = 1000, conf.level, seed){
  
  data <- eval(parse(text=data), envir = parent.frame())
  
  med.alt <- unlist(strsplit(med.alt.transmit, split=","))

  if(!is.null(covariates.transmit)){
    covariates <- unlist(strsplit(covariates.transmit, split=","))
  }else{
    covariates <- covariates.transmit
  }  
  
  if(!is.null(seed)){
    set.seed(seed)
  }

  m.med.out <- mediation::multimed(outcome = outcome, med.main = med.main, med.alt = med.alt, treat = treat, 
                                   covariates = covariates, experiment = NULL, data = data, design = c("single", "parallel"),
                                   sims = sims, R2.by = 0.01, conf.level = conf.level, weight = NULL)
  
  out <- summary(m.med.out)
  return(out)
  
}