\name{astrowrap_lm.fit}
\alias{astrowrap_lm.fit}
\title{Basic Engine for Straight Line Fitting}
\description{
  <Ashish: could you look at "?lm.fit" and suggest a description?>
}

\usage{
  astrowrap("test_name", ...)
}
\arguments{
  \item{test_name}{can be either of \code{lm.fit} or \code{lm.wfit}}
  \item{...}{expressions evaluated in the context of the \code{\link[stats]{lm.fit}}}
}
\references{
Djorgovski, S., & Davis, M. (1987). \emph{Fundamental properties of elliptical galaxies}. The Astrophysical Journal, 313, 59-68. \href{http://articles.adsabs.harvard.edu/cgi-bin/nph-iarticle_query?1987ApJ...313...59D&amp;data_type=PDF_HIGH&amp;whole_paper=YES&amp;type=PRINTER&amp;filetype=.pdf}{PDF}
}
\seealso{
  \code{\link{astrowrap_lm}}, \code{\link{astrowrap_family.lm}}
}
\examples{
## Fundamental Plane of Elliptical Galaxies. See ?astrowrap_lm
## for further description of the data
data(fun_plan)
summary(fun_plan)

## Creating the design matrix (X)
funplan_desmat <- matrix(c(rep(1, nrow(fun_plan)), 
 fun_plan$logre_parsec), ncol=2)
lm_re_mue <- astrowrap("lm.fit", as.matrix(fun_plan$logre_parsec),
 as.matrix(fun_plan$mue))
lm_re_mue$coefficients
}
\keyword{astrowrap}