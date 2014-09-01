\name{astrowrap_prcomp}
\alias{astrowrap_prcomp}
\title{Principal Component Analysis}
\description{
  To perform Q-mode principal component analysis on a given numeric data frame or matrix.
}

\usage{
  astrowrap("prcomp", ...)
}
\arguments{
  \item{...}{expressions evaluated in the context of the \code{\link[stats]{prcomp}}}
}
\references{
Feigelson, E. D., & Babu, G. J. (2012). \emph{Modern statistical methods for astronomy: with R applications}. Cambridge University Press.
}
\seealso{
\code{\link{astrowrap_summary.princomp}}, \code{\link{astrowrap_princomp}}
}
\examples{
## Data referred to here provides global properties (measured and inferred)
## of clusters of stars in the Milky Way galaxy. For details, see ?glob_clus_prop
data(glob_clus_prop)
summary(glob_clus_prop)

# Use only the dynamic variables (all besides name and location columns)
gc_dyn <- glob_clus_prop[,-c(1:4)]

pca_gc_dyn <- astrowrap("prcomp", gc_dyn)
pca_gc_dyn

# Summary
astrowrap("summary", pca_gc_dyn, loadings=TRUE)
}
\keyword{astrowrap}
