\name{crts_lcstat}
\alias{crts_lcstat}
\docType{data}
\title{Lightcurve characteristics of CRTS based dataset}
\description{
  This dataset provides various statistics/measures obtained for CRTS lightcurves. Many are from Richards et al. (full ref here). More information about CRTS can be found here: http://crts.caltech.edu
}
\usage{data(crts_lcstat)}
\format{
  A data frame with 1619 observations on the following 26 variables.
  \describe{
    \item{\code{name}}{name of the object}
    \item{\code{amplitude}}{half the difference between the maximum and minimum magnitudes}
    \item{\code{beyond1std}}{percentage of points beyond one standard deviation from the weighted mean}
    \item{\code{fpr_mid20}}{ratio of flux percentiles (60th-40th) over (95th-5th)}
    \item{\code{fpr_mid35}}{ratio of flux percentiles (67.5th-32.5th) over (95th-5th)}
    \item{\code{fpr_mid50}}{ratio of flux percentiles (75th-25th) over (95th-5th)}
    \item{\code{fpr_mid65}}{ratio of flux percentiles (82.5th-17.5th) over (95th-5th)}
    \item{\code{fpr_mid80}}{ratio of flux percentiles (90th-10th) over (95th-5th)}
    \item{\code{linear_trend}}{slope of linear fit to the light curve}
    \item{\code{max_slope}}{maximum absolute flux slope between two consecutive observations}
    \item{\code{mad}}{median discrepancy of the fluxes from the median flux}
    \item{\code{med_buf_per}}{percentage of fluxes within 10\% of the amplitude from the median}
    \item{\code{pair_slope_trend}}{percentage of the last 30 pairs of consecutive flux measurements that have a positive slope}
    \item{\code{per_amp}}{largest percentage difference between either the maximum or minimum flux and the median}
    \item{\code{pdfp}}{ratio of (95th-5th) flux percentile over the median flux}
    \item{\code{skew}}{the skew of the magnitudes}
    \item{\code{skurt}}{kurtosis of the magnitudes, reliable to a small number of epochs using the formula mentioned \href{http://www.xycoom.com/peakedness_small_sample_test_1.htm}{here}}
    \item{\code{std}}{standard deviation of magnitudes}
    \item{\code{ls}}{the period of the frequency in the Lomb-Scargle periodogram}
    \item{\code{rcorbor}}{the fraction of magnitudes 1.5 magnitudes below the median}
    \item{\code{class}}{classification of the object which can be mapped to:
                  \tabular{rll}{
                      [,1] \tab AGN: \tab Active Galactic Nuclei\cr
                      [,2] \tab Bl: \tab Blazars\cr
                      [,3] \tab CV: \tab Cataclysmic Variables\cr
                      [,4] \tab Downes: \tab Downes Cataclysmic Variables\cr 
                      [,5] \tab Flare: \tab Flare stars\cr
		      [,6] \tab NV: \tab Non-Variables\cr
                      [,7] \tab RRLyrae: \tab RR Lyrae\cr
		      [,8] \tab SN: \tab Super Nova\cr
    }}
  }
}
\details{
  %% ~~ Some additional details if required ~~
}
\source{
\href{http://crts.caltech.edu/}{CRTS}
}
\references{
Drake, A. J., Djorgovski, S. G., Mahabal, A., Beshore, E., Larson, S., Graham, M. J., ... & Kowalski, R. (2009). \emph{First results from the Catalina real-time transient survey}. The Astrophysical Journal, 696(1), 870.
}
\examples{
data(crts_lcstat)
str(crts_lcstat)
summary(crts_lcstat)
}
\keyword{datasets}
