\name{astrowrap_glm}
\alias{astrowrap_glm}
\title{Fit Generalized Linear Models}

\description{
 To fit \code{glm} to a set of variables with varied error distributions and link functions explaining the relationship between the regressor and the regressand.
}

\usage{
astrowrap("glm", formula, family, data, ...)
}

\arguments{
    \item{formula}{An expression (represented as a character string) that denotes the formula to be fitted.}
    \item{family}{The assumed error distribution and its associated link function. Common choices include "gaussian", "binomial", and "poisson".}
    \item{data}{A dataframe, list, or environment that contains the variables mentioned in 'formula'.}
    \item{...}{Expressions evaluated in the context of the \code{\link[stats]{glm}}.}
}

\references{
Zamorani, G., Henry, J. P., Maccacaro, T., Tananbaum, H., Soltan, A., Avni, Y., ... & Condon, J. J. (1981). X-ray studies of quasars with the Einstein Observatory. II. \emph{The Astrophysical Journal, 245}, 357-374. \href{http://articles.adsabs.harvard.edu/cgi-bin/nph-iarticle_query?1981ApJ...245..357Z&amp;data_type=PDF_HIGH&amp;whole_paper=YES&amp;type=PRINTER&amp;filetype=.pdf}{PDF} \cr
Feigelson, E. D., & Nelson, P. I. (1985). Statistical methods for astronomical data with upper limits. I-Univariate distributions. \emph{The Astrophysical Journal, 293}, 192-206. \href{http://articles.adsabs.harvard.edu/cgi-bin/nph-iarticle_query?1985ApJ...293..192F&amp;data_type=PDF_HIGH&amp;whole_paper=YES&amp;type=PRINTER&amp;filetype=.pdf}{PDF}
}

\seealso{
\code{astrowrap_lm}, \code{astrowrap_summary.glm}
}

\examples{
## Data used here (Zamorani et al, 1981) provides the x-ray emissions and classification
## of radio loudness of 107 quasars detected by the Einstein observatory. The paper proves
## the existence of a significant correlation between radio and x-ray emissions in quasars

data(quasars_emissions)
summary(quasars_emissions)


## We can fit a binomial logit GLM to predict if a given quasar is radio-loud or 
## radio-quiet (qso_type) based on the nominal power law energy slope between 
## optical and x-ray bands (alpha_ox)

xray_noisy_glm <- astrowrap("glm", qso_type~alpha_ox, data=quasars_emissions, family=binomial)
xray_noisy_glm
astrowrap("summary", xray_noisy_glm)
}

\keyword{astrowrap}
