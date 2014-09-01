\name{combo_17}
\alias{combo_17}
\docType{data}
\title{Colour-magnitude data of COMBO-17 galaxies}
\description{
  Classifying Objects by Medium-Band Observations in 17 filters (COMBO-17) photometric survey of normal galaxies has observed approximately 25000 galaxies. This data set only consists of galaxies with redshift less than 0.3 and includes absolute magnitude in the blue band (M_B) and Ultraviolet-to-Blue colour index (M_280-M_B) of these objects.
}
\usage{data(combo_17)}
\format{
  A data frame with 572 observations on the following 2 variables.
  \describe{
    \item{\code{M_B}}{galaxy absolute magnitude in the blue band}
    \item{\code{M_280-M_B}}{ultraviolet-to-blue colour index}
  }
}
\details{
%%  ~~ If necessary, more details than the __description__ above ~~
}
\source{
Wolf, C., Meisenheimer, K., Rix, H. W., Borch, A., Dye, S., & Kleinheinrich, M. (2003). The COMBO-17 survey: Evolution of the galaxy luminosity function from 25 000 galaxies with 0.2< z< 1.2. \emph{Astronomy and Astrophysics}, 401, 73-98. \href{http://adsabs.harvard.edu/cgi-bin/nph-data_query?bibcode=2003A\%26A...401...73W&link_type=ARTICLE&db_key=AST&high=}{PDF}
}
\references{
Feigelson, E. D., & Babu, G. J. (2012). \emph{Modern statistical methods for astronomy: with R applications}. Cambridge University Press.
}
\examples{
data(combo_17)
}
\keyword{datasets}
