\name{glob_clus_prop}
\alias{glob_clus_prop}
\docType{data}
\title{Global properties of Galactic Globular Clusters}
\description{
The data provides global properties of globular clusters in the Milky Way galaxy. The variables include location, structural, dynamical, and photometric properties, all of which contribute towards our understanding of the galaxy"s evolution. For detailed interpretation of these properties, refer to Webbink (1985) and Feigelson & Babu (2012).
}
\usage{data(glob_clus_prop)}
\format{
  A data frame with 111 observations on the following 19 variables.
  \describe{
    \item{\code{Name}}{Common name}
    \item{\code{Gal.long}}{Galactic longitude (degrees)}
    \item{\code{Gal.lat}}{Galactic latitude (degrees)}
    \item{\code{R.sol}}{Distance from Sun (kpc)}
    \item{\code{R.GC}}{Distance from Galactic Center (kpc)}
    \item{\code{Metal}}{Log metallicity with respect to solar metallicity}
    \item{\code{Mv}}{Absolute magnitude}
    \item{\code{r.core}}{Core radius (pc)}
    \item{\code{r.tidal}}{Tidal radius (pc)}
    \item{\code{Conc}}{Core concentration parameter}
    \item{\code{log.t}}{Log central relaxation timescale (yr)}
    \item{\code{log.rho}}{Log central density (M0/pc^-3)}
    \item{\code{S0}}{Central velocity dispersion (km s^-1)}
    \item{\code{V.esc}}{Central escape velocity (km s^-1)}
    \item{\code{VHB}}{Level of the horizontal branch (mag)}
    \item{\code{E.B-V}}{Color excess (mag)}
    \item{\code{B-V}}{Color index (mag)}
    \item{\code{Ellipt}}{Ellipticity}
    \item{\code{V.t}}{Integrated V magnitude (mag)}
    \item{\code{CSB}}{Central surface brightness (mag per square arcsec)}
  }
}
\details{
For the purposes of this package, observations with at least one missing variable value were omitted, following by standarization of variables, and removal of two outliers which has unusually high values of \code{R.sol} and \code{log.t}.
}
\source{
Webbink, R. F. (1985). \emph{Structure parameters of galactic globular clusters}. In Dynamics of star clusters (Vol. 113, pp. 541-577). \href{http://adsabs.harvard.edu/cgi-bin/nph-data_query?bibcode=1985IAUS..113..541W&link_type=ARTICLE&db_key=AST&high=}{PDF}
}
\references{
Feigelson, E. D., & Babu, G. J. (2012). \emph{Modern statistical methods for astronomy: with R applications}. Cambridge University Press.
}
\examples{
data(glob_clus_prop)
summary(glob_clus_prop)
str(glob_clus_prop)
}
\keyword{datasets}
