\name{astrowrap_summary}
\alias{astrowrap_summary}
\title{Summary of an object}
\description{
  Provides a summary of an object belonging to either a principal component analysis, linear model or generalized linear model object.
}

\usage{
  astrowrap("summary", ...)
}
\arguments{
  \item{...}{arguments relevant to either \code{\link[stats]{summary.princomp}}, \code{\link[stats]{summary.lm}}, or \code{\link[stats]{summary.glm}}}
}
\references{
Feigelson, E. D., & Babu, G. J. (2012). Modern statistical methods for astronomy: with R applications. \emph{Cambridge University Press}.
Zamorani, G., Henry, J. P., Maccacaro, T., Tananbaum, H., Soltan, A., Avni, Y., ... & Condon, J. J. (1981). X-ray studies of quasars with the Einstein Observatory. II. \emph{The Astrophysical Journal, 245}, 357-374.
Feigelson, E. D., & Nelson, P. I. (1985). Statistical methods for astronomical data with upper limits. I-Univariate distributions. \emph{The Astrophysical Journal, 293}, 192-206.
}
\seealso{
\code{\link{astrowrap_princomp}}, \code{\link{astrowrap_prcomp}}, \code{\link{astrowrap_lm}}, \code{\link{astrowrap_glm}}
}
\examples{
### Principal Component Analysis
## <Ashish: a brief description of the data set required>
data(crts_lcstat)
summary(crts_lcstat)
lcstat_pca <- astrowrap("princomp", crts_lcstat[,-1], cor=TRUE)

# Summary method
astrowrap("summary", lcstat_pca)


## Data referred to here provides global properties (measured and inferred)
## of clusters of stars in the Milky Way galaxy. For details, see ?glob_clus_prop
data(glob_clus_prop)
summary(glob_clus_prop)

# Use only the dynamic variables (all besides name and location columns)
gc_dyn <- glob_clus_prop[,-c(1:4)]

pca_gc_dyn <- astrowrap("princomp", gc_dyn)

# Summary prints the individual and cumulative variance explained by each PC
astrowrap("summary", pca_gc_dyn)

# An additional parameter prints the PC loadings as well
astrowrap("summary", pca_gc_dyn, loadings=TRUE)


### Linear Model
data(fun_plan)
lm_re_mue <- astrowrap("lm", as.formula("mue~logre_parsec"), data=fun_plan)
astrowrap("summary", lm_re_mue)


### Generalized Linear Model
data(quasars_xray_emission)
astrowrap("summary", astrowrap("glm", qso_type~alpha_ox, data=quasars_xray_emission, 
	family=binomial))
}
\keyword{astrowrap}
