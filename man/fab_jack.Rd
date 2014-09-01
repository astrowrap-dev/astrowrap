\name{fab_jack}
\alias{fab_jack}
\docType{data}
\title{Absolute magnitude and velocity dispersion of E and S0 type galaxies}
\description{
  Obtained using the image-dissector scanner (IDS) at the Cassegrain focus of the 120 inch (3m) telescope, this is the original data set leading to the famous Faber-Jackson relationship between luminosity and velocity dispersion of elliptical galaxies. 
}
\usage{data(fab_jack)}
\format{
  A data frame with 25 observations on the following 5 variables.
  \describe{
    \item{\code{Obj}}{name of the galaxy}
    \item{\code{Type}}{type of galaxy}
    \item{\code{Mag}}{absolute magnitude}
    \item{\code{Vel}}{velocity dispersion (in kms^-1)}
    \item{\code{Lcens}}{whether velocity dispersion is left censored: \code{0} means \code{No} and \code{1} means \code{Yes}}
  }
}
\source{
Robinson, L. B., & Wampler, E. J. (1972). The Lick Observatory image-dissector
scanner. \emph{Publications of the Astronomical Society of the Pacific},
161-166. \cr
Faber, S. M., & Jackson, R. E. (1976). Velocity dispersions and mass-to-light ratios for elliptical galaxies. 
\emph{The Astrophysical Journal, 204}, 668-683. \href{http://articles.adsabs.harvard.edu/cgi-bin/nph-iarticle_query?1976ApJ...204..668F&amp;data_type=PDF_HIGH&amp;whole_paper=YES&amp;type=PRINTER&amp;filetype=.pdf}{PDF}
}
\examples{
data(fab_jack)
## maybe str(fab_jack) ; summary(fab_jack) ...
}
\keyword{datasets}
