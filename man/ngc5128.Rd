\name{ngc5128}
\alias{ngc5128}
\docType{data}
\title{Properties of globular clusters from NGC5128 galaxy}
\description{
The data provided in Chattopadhyay and Chattopadhyay (2009) consists of a sample of globular clusters from NGC5128, a giant elliptical galaxy in the Centaurus group. Structural and photometric parameters, that total to 35, describe the clusters in this galaxy. Further details on how the parameters were obtained can be found in the source.
}
\usage{data(ngc5128)}
\format{
  A data frame with 130 observations on the following 36 variables.
  \describe{
    \item{\code{name}}{name of the Globular Cluster (GC)}
    \item{\code{age}}{age of the GC}
    \item{\code{log_Rc}}{core radius (in pc)}
    \item{\code{log_Rtid}}{tidal radius (in pc)}
    \item{\code{log_rh}}{half-light radius (in pc)}
    \item{\code{rho_0}}{central volume density (in Msun pc^-3)}
    \item{\code{sigma_p0}}{predicted line of sight velocity dispersion at the cluster center (in kms^-1)}
    \item{\code{t_rh}}{two-body relaxation time at the model projected half-mass radius (in yrs)}
    \item{\code{log_Rgc}}{galactocentric radius (in kpc)}
    \item{\code{c}}{concentration (~log(Rtid/Rc))}
    \item{\code{W0}}{dimensionless central potential of the best-fitting model}
    \item{\code{mu_0}}{extinction-corrected central surface brightness in the F606W bandpass (in mag arcsec^-2)}
    \item{\code{mu_vh}}{V surface brightness averaged over Rh (in mag arcsec^-2)}
    \item{\code{log_Mtot}}{integrated model mass (in Msun)}
    \item{\code{FebyH}}{metallicity (in dex)}
  }
}
\source{
Chattopadhyay, A. K., Chattopadhyay, T., Davoust, E., Mondal, S., & Sharina, M. (2009). Study of NGC 5128 globular clusters under multivariate statistical paradigm. \emph{The Astrophysical Journal, 705(2)}, 1533.
}
\examples{
data(ngc5128)
summary(ngc5128)
str(ngc5128)
}
\keyword{datasets}
