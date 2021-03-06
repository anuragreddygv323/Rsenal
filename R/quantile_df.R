#' @title Pretty print quantiles
#' @description Useful for R Markdown reports
#' @param x numeric vector to calculate quantile with
#' @param probs numeric vector of probabilities to use for quantile
#' @param na.rm logical, pass to quantile function
#' @param names logical, pass to quantile function
#' @param type, number, pass to quantile function
#' @param colname, character, name of variable column in output
#' @param round, integer, number of digits to round quantile value.  
#' passed to \code{digits} argument of \code{round} function
#' @return prettified data.frame of probabilities
#' @export
#' @examples
#'
#' quantile_df(mtcars$mpg, seq(0,1,.1))
#' quantile_df(mtcars$mpg, seq(0,1,.1), names=T)
#' quantile_df(mtcars$mpg, seq(0,1,.2), colname='mpg')
#' quantile_df(mtcars$mpg, round=1)

quantile_df <- function(x, probs=seq(0,1,.05), na.rm=F, names=F, type=7, colname=NULL, round=NULL, ...){
  z <- quantile(x, probs, na.rm, names, type)
  probsprint <- paste0(round(probs*100,3), '%')
  df <- data.frame(quantile=probsprint, values=z)
  if(is.null(round)==F) df[,2] <- round(df[,2], round)
  if(is.null(colname)==F) names(df)[2] <- colname
  return(df)
}

