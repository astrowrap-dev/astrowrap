\name{quasars_emissions}
\alias{quasars_emissions}
\docType{data}
\title{Emission data in different light bands for quasars}
\description{
    Data contains nominal power law energy slope between optical and x-ray bands and optical and radio bands for 107 quasars, mostly using the Imagining Proportional Counter (IPC) on board Einstein Observatory.
}
\usage{data(quasars_emissions)}
\format{
  A data frame with 107 observations on the following 4 variables.
  \describe{
    \item{\code{name}}{name of the quasar}
    \item{\code{alpha_ox}}{nominal power law energy slope between optical and x-ray bands}
    \item{\code{alpha_ro}}{nominal power law energy slope between optical and radio bands}
    \item{\code{qso_type}}{classification of quasars: \code{0} for Radio Quiet QSOs and \code{1} for Radio Loud QSOs}
  }
}
\source{
Zamorani, G., Henry, J. P., Maccacaro, T., Tananbaum, H., Soltan, A., Avni, Y., ... & Condon, J. J. (1981). X-ray studies of quasars with the Einstein Observatory. II. \emph{The Astrophysical Journal, 245}, 357-374. \href{http://articles.adsabs.harvard.edu/cgi-bin/nph-iarticle_query?1981ApJ...245..357Z&amp;data_type=PDF_HIGH&amp;whole_paper=YES&amp;type=PRINTER&amp;filetype=.pdf}{PDF}
}
\examples{
data(quasars_emissions)
summary(quasars_emissions)
str(quasars_emissions)
}
\keyword{datasets}
