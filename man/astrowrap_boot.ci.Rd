\name{astrowrap_boot.ci}
\alias{astrowrap_boot.ci}
\title{Confidence Intervals of Bootstrap Parameters}
\description{
  Computes five different types of confidence intervals of parameters estimated using bootstrap resampling. These include 
  first order normal approximation (norm), basic bootstrap interval (basic), studentized bootstrap interval (stud),
  bootstrap percentile interval (perc), and adjusted bootstrap percentile interval (bca)
}

\usage{
  astrowrap("boot.ci", ...)
}
\arguments{
  \item{...}{expressions evaluated in the context of the \code{\link[boot]{boot.ci}}}
}
\references{
Faber, S. M., & Jackson, R. E. (1976). \emph{Velocity dispersions and mass-to-light ratios for elliptical galaxies}. 
The Astrophysical Journal, 204, 668-683. \href{http://articles.adsabs.harvard.edu/cgi-bin/nph-iarticle_query?1976ApJ...204..668F&amp;data_type=PDF_HIGH&amp;whole_paper=YES&amp;type=PRINTER&amp;filetype=.pdf}{PDF}
}
\seealso{
  \code{\link{astrowrap_boot}}, \code{\link{astrowrap_boot.array}}
}
\examples{
## Faber-Jackson relationship
## For further details on the data, see ?astrowrap_boot
data(fab_jack)
summary(fab_jack)

fab_jack_lm <- function(data, indices=NULL, x_var, y_var) {
  data <- data[indices,]
  lm_form <- as.formula(paste(y_var, "~", x_var))
  lm_sum <- summary(lm(lm_form, data=data))
  lm_sum$coefficients[c(1,2), 1]
}
fab_boot <- astrowrap("boot", fab_jack, fab_jack_lm, R=1000, 
 x_var="Mag", y_var="Vel")

# Obtaining all five types of confidence intervals for
# intercept and slope
astrowrap("boot.ci", fab_boot)

# Obtaining confidence intervals of difference sizes
astrowrap("boot.ci", fab_boot, c(0.90, 0.05, 0.99),
 c("norm", "stud", "bca"))
}
\keyword{astrowrap}