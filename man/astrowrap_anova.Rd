\name{astrowrap_anova}
\alias{astrowrap_anova}
\title{Analysis of Variance for model fits}
\description{
  Analysis the variability in data in terms of the model and residual variation and allows for inference on goodness-of-fit of \code{lm} or \code{glm} models.
}

\usage{
astrowrap("anova", obj, ...)
}
\arguments{
  \item{obj}{object returned by either \code{lm} or \code{glm} function}
  \item{...}{additional arguments relevant to the choice of object above}  
}
\seealso{
\code{astrowrap_lm}, \code{astrowrap_glm}
}
\examples{
### For ANOVA for least squares regression models, we will use the 
### Fundamental plane example as also discussed in "astrowrap_lm". 
### A straight line model can be used for elliptical galaxies wherein
### one can estimate their average surface brightness (mue) based on 
### their effective radius.
data(fun_plan)
lm_re_mue <- astrowrap("lm", as.formula("mue~logre_parsec"), data=fun_plan)
astrowrap("anova", lm_re_mue)

### ANOVA for generalized least squares can be illustrated using the 
### quasar emission data discussed in "astrowrap_glm". Using that data, 
### given quasar is radio-loud or radio-quiet (qso_type) based on the 
### nominal power law energy slope between optical and x-ray bands (alpha_ox).
data(quasars_emissions)
xray_noisy_glm <- astrowrap("glm", qso_type~alpha_ox, data=quasars_emissions,
    family=binomial)
astrowrap("anova", xray_noisy_glm)
}
\keyword{astrowrap}

