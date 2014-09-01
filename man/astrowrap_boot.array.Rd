\name{astrowrap_boot.array}
\alias{astrowrap_boot.array}
\title{Bootstrap Samples}
\description{
  Returns a matrix indicating either the frequency or index of original sample observations in each of the bootstrap samples.
}

\usage{
  astrowrap("boot.array", ...)
}
\arguments{
  \item{...}{expressions evaluated in the context of the \code{\link[boot]{boot.array}}}
}
\references{
Faber, S. M., & Jackson, R. E. (1976). \emph{Velocity dispersions and mass-to-light ratios for elliptical galaxies}. 
The Astrophysical Journal, 204, 668-683. \href{http://articles.adsabs.harvard.edu/cgi-bin/nph-iarticle_query?1976ApJ...204..668F&amp;data_type=PDF_HIGH&amp;whole_paper=YES&amp;type=PRINTER&amp;filetype=.pdf}{PDF}
}
\seealso{
  \code{\link{astrowrap_boot}}, \code{\link{astrowrap_boot.ci}}
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

# Frequency of every observation in each resample
astrowrap("boot.array", fab_boot) 

# Indices of original observations as they appear in a resample
astrowrap("boot.array", fab_boot, TRUE) 
}
\keyword{astrowrap}