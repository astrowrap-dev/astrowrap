\name{astrowrap_family.lm}
\alias{astrowrap_family.lm}
\title{Elements of a Model Fit Object}
\description{
  Methods to access elements of the \code{lm} or \code{glm} object.
}

\usage{
  astrowrap("element_name", ...)
}
\arguments{
  \item{element_name}{can be one of \code{family, formula, residuals} or \code{labels} for \code{lm} and \code{family} or \code{residuals} for \code{glm}}
  
  \item{...}{expressions evaluated in the context of the \code{\link[stats]{lm.summaries}} or \code{\link[stats]{glm.summaries}}}
}
\references{
Dressler, A., Lynden-Bell, D., Burstein, D., Davies, R. L., Faber, S. M.,
Terlevich, R., & Wegner, G. (1987). \emph{Spectroscopy and photometry of
elliptical galaxies. I-A new distance estimator}. The Astrophysical Journal,
313, 42-58.
\href{http://articles.adsabs.harvard.edu/cgi-bin/nph-iarticle_query?1987ApJ...313...42D&amp;data_type=PDF_HIGH&amp;whole_paper=YES&amp;type=PRINTER&amp;filetype=.pdf}{PDF}
\cr
Zamorani, G., Henry, J. P., Maccacaro, T., Tananbaum, H., Soltan, A., Avni, Y.,
... & Condon, J. J. (1981). X-ray studies of quasars with the Einstein
Observatory. II. \emph{The Astrophysical Journal, 245}, 357-374.
\href{http://articles.adsabs.harvard.edu/cgi-bin/nph-iarticle_query?1981ApJ...245..357Z&amp;data_type=PDF_HIGH&amp;whole_paper=YES&amp;type=PRINTER&amp;filetype=.pdf}{PDF}
\cr
Feigelson, E. D., & Nelson, P. I. (1985). Statistical methods for astronomical data with upper limits. I-Univariate distributions. \emph{The Astrophysical Journal, 293}, 192-206. \href{http://articles.adsabs.harvard.edu/cgi-bin/nph-iarticle_query?1985ApJ...293..192F&amp;data_type=PDF_HIGH&amp;whole_paper=YES&amp;type=PRINTER&amp;filetype=.pdf}{PDF}
}
\seealso{
\code{\link{astrowrap_lm}}, \code{\link{astrowrap_glm}}
}
\examples{
### Linear Model
## The data set used here is based on Dressler et al (1987) who use kinematic
## and photometric data of 97 elliptical galaxies in six clusters. In this paper,
## the authors suggest a new parameter Dn, a linear combination of luminosity (L)
## and average surface brightness within an effective radius (Sigma), that 
## correlates well with velocity dispersion of elliptical galaxies (sigma) thereby
## reducing the fundamental plane to a system of two variables. The straight line
## fit between Dn and sigma can be used to estimate relative distances of 
## elliptical galaxies to similar accuracy of Tully-Fisher relationship for
## spiral galaxies.
data(ellipticals_dist)
# We remove galaxies from the clusters Virgo and Fornax for the sake of the example here
ell_wo_vir_for <- ellipticals_dist[!(ellipticals_dist$cluster \%in\% c("virgo", "fornax")),] 
cor.test(ell_wo_vir_for$logDn, ell_wo_vir_for$logsig)

lm_ell <- astrowrap("lm", as.formula("logsig ~ logDn"), data=ell_wo_vir_for)
astrowrap("summary.lm", lm_ell)
plot(ell_wo_vir_for$logDn, ell_wo_vir_for$logsig, pch=20,
 xlab=expression("log(" ~ D[n] ~ ")"), ylab=expression("log(" ~ sigma ~ ")"))
abline(reg=coef(lm_ell))

## "Family" indicates the assumed error distribution. "Link" indicates the 
## order of relationship between the dependent and the independent variable
astrowrap("family", lm_ell) # Model is of form "y~x"
astrowrap("formula", lm_ell)
astrowrap("residuals", lm_ell)
astrowrap("labels", lm_ell)


### Generalized Linear Model
data(quasars_xray_emission)
xray_noisy_glm <- astrowrap("glm", qso_type~alpha_ox, data=quasars_xray_emission,
	 family=binomial)

astrowrap("family", xray_noisy_glm)
xray_glm_res <- astrowrap("residuals", xray_noisy_glm, type="pearson")
plot(astrowrap("predict", xray_noisy_glm), xray_glm_res, 
	xlab="Predicted values", ylab="Pearson residuals")
}
\keyword{astrowrap}
