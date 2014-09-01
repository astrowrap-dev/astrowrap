\name{astrowrap_boot}
\alias{astrowrap_boot}
\title{Bootstrap resampling}
\description{
  To generate bootstrap samples from given data and compute the statistic(s) of interest.
}

\usage{
  astrowrap("boot", data, statistic, R, ...)
}
\arguments{
    \item{data}{Vector, matrix, or dataframe from which to extract and use samples.}
    \item{statistic}{Function that calculates the statistic for which bootstrap estimates are to be obtained.}
    \item{R}{Number of bootstrap samples to generate and use.}
    \item{...}{expressions evaluated in the context of the \code{\link[boot]{boot}}}
}
\references{
Faber, S. M., & Jackson, R. E. (1976). Velocity dispersions and mass-to-light ratios for elliptical galaxies. 
\emph{The Astrophysical Journal, 204}, 668-683. \href{http://articles.adsabs.harvard.edu/cgi-bin/nph-iarticle_query?1976ApJ...204..668F&amp;data_type=PDF_HIGH&amp;whole_paper=YES&amp;type=PRINTER&amp;filetype=.pdf}{PDF}
}
\seealso{
\code{\link{astrowrap_boot.array}}, \code{\link{astrowrap_boot.ci}}
}
\examples{
## The Faber-Jackson relationship describes a power law relationship 
## between luminosity (Mag) and velocity dispersion (Vel) of elliptical 
## galaxies. Since the original data (Faber \& Jackson, 1976) consists 
## of only 25 galaxies, bootstrap resampling can be used to judge the 
## robustness of OLS parameter estimates.

## Visualize the data
data(fab_jack)
library(ggplot2)
summary(fab_jack)
qplot(fab_jack$Mag, log10(fab_jack$Vel), xlim=rev(range(fab_jack$Mag))) + xlab("Mg") + ylab("log10(v)") 
 
## Define a function to perform OLS regression on this data
fab_jack_lm <- function(data, indices=NULL, x_var, y_var) {
  data <- data[indices,]
  lm_form <- as.formula(paste(y_var, "~", x_var))
  lm_sum <- summary(lm(lm_form, data=data))
  lm_sum$coefficients[c(1,2), 1]
}

# Obtain bootstrap estimates of slope and intercept for OLS
astrowrap("boot", fab_jack, fab_jack_lm, R=1000, x_var="Mag", y_var="Vel")
}
\keyword{astrowrap}