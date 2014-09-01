\name{astrowrap_glm.diag.plots}
\alias{astrowrap_glm.diag.plots}
\title{Diagnostic plots for GLM fits}
\description{
  Produces a plot of jackknife deviance residuals against predicted values, a quantile-quantile plot of standardized deviance residuals, a plot of Cook statistics against leverage/(1-leverage), and a case plot of Cook statistic.
}

\usage{
astrowrap("glm.diag.plots", glm_object, ...)
}
\arguments{
  \item{glm_object}{an object of \code{glm} call}

  \item{...}{expressions evaluated in the context of the \code{\link[stats]{glm.diag.plots}}}
}
\seealso{
\code{astrowrap_glm}, \code{astrowrap_summary}, \code{astrowrap_family}, \code{astrowrap_glm.diag}
}


