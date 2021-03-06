% Generated by roxygen2 (4.0.2): do not edit by hand
\name{roundCut}
\alias{roundCut}
\title{Round numbers in interval}
\usage{
roundCut(x, r = 1)
}
\arguments{
\item{x}{character vector of bins to format}

\item{r}{number, 0 to 10 (or higher I suppose) indicating how many decimals to display}
}
\value{
formatted character vector with length of input vector.
}
\description{
Formats an interval of form \code{(5.234,11.783]} to something like \code{(5.2,11.8]}.
Used for formatting only, mainly with binning functions like \code{\link{depthbin}}.  Intervals can be opened or closed with
\code{(} and \code{[} respectively and are maintained as such when formatted.  Useful for prettifying graphs and reports.
}
\examples{
x1 <- cut(quantile(rnorm(100)), breaks=4)
roundCut(x1, 1)
}
\seealso{
\code{\link{depthbin}}
}

