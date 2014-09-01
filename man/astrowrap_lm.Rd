\name{astrowrap_lm}
\alias{astrowrap_lm}
\title{Linear Models}

\description{
  To perform simple or multiple linear regression using Ordinary or Weighted Least Squares
}

\usage{
  astrowrap("lm", formula, data, weights, na.action, ...)
}

\arguments{
  \item{formula}{A "formula" object specifying the model to the fitted.}
  \item{data}{A data frame containing the variables specified in the model. If not specified, an attempt is made to fetch the variables from the environment in which "lm" was called.}
  \item{weights}{An optional vector specifying the weights to be used in model fitting.}
  \item{na.action}{A function indicating how missing values (NA) are to dealt with during model fitting. The default value is "na.omit" which removes all observations with at least one variable missing during the fitting procedure.} 
  \item{...}{Other expressions evaluated in the context of \code{\link[stats]{lm}}.}
}

\references{
Djorgovski, S., & Davis, M. (1987). \emph{Fundamental properties of elliptical galaxies}. The Astrophysical Journal, 313, 59-68. \href{http://articles.adsabs.harvard.edu/cgi-bin/nph-iarticle_query?1987ApJ...313...59D&amp;data_type=PDF_HIGH&amp;whole_paper=YES&amp;type=PRINTER&amp;filetype=.pdf}{PDF}
}

\seealso{
\code{\link{astrowrap_family.lm}}
}

\examples{
## Fundamental Plane of Elliptical Galaxies
##
## The planar relationship between effective radius of a galaxy (re),
## average surface brightness within the effective radius (mue), 
## and velocity dispersion of the galaxy (sigma_v) is an indicator of
## strong regularity in the galaxy formation process. 

data(fun_plan)
summary(fun_plan)
pairs(fun_plan[, c(4, 10, 14)])
cor.test(fun_plan$logre_parsec, fun_plan$mue) #0.8


## On the above evidence of a strong correlation between effective
## radius (re) and average surface brightness (mue), we fit a 
## straight line through them.

lm_re_mue <- astrowrap("lm", as.formula("mue~logre_parsec"), data=fun_plan)
astrowrap("summary.lm", lm_re_mue)


## A quick visualisation of the straight line fit

qplot(logre_parsec, mue, data=fun_plan) +  
 xlab(expression("log(" ~ r[e] ~ ")")) + ylab(expression("<" ~ mu ~ ">" ~ ""[e])) + stat_smooth(method="lm", se=FALSE)


## As the scatter of points around the straight line is large, explore
## the possibility of a third variable required to explain the 
## relationship better

resid_re_mue <- resid(lm_re_mue)
cor.test(resid_re_mue, fun_plan$logsig_v) # -0.57


## Strong correlation suggests that velocity dispersion plays a role 
## in the process of galaxy formation

lm_fplane <- astrowrap("lm", as.formula("mue~logre_parsec+logsig_v"),
 data=fun_plan)
astrowrap("summary.lm", lm_fplane)


## Visualizing the fundamental plane

data_fp_plot <- data.frame("logre_parsec"=fun_plan$logre_parsec, 
 "y"=0.37*fun_plan$mue+1.13*fun_plan$logsig_v) 
qplot(logre_parsec, y, data=data_fp_plot) +  
 xlab(expression("log(" ~ r[e] ~ ")")) + 
 ylab(expression("0.37 <" ~ mu ~ ">" ~ ""[e] ~ " + 1.13 log(" ~ sigma ~ ")")) + stat_smooth(method="lm", se=FALSE)
}

\keyword{astrowrap}
