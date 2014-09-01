\name{astrowrap_biplot.princomp}
\alias{astrowrap_biplot.princomp}
\title{PCA Biplot}
\description{
  Generate a biplot of the first and second principal component based on a \code{\link[stats]{princomp}} or \code{\link[stats]{prcomp}} object
}

\usage{
  astrowrap("biplot", ...)
}
\arguments{
  \item{...}{expressions evaluated in the context of the \code{\link[stats]{prcomp}}}
}
\seealso{
\code{\link{astrowrap_summary.princomp}}, \code{\link{astrowrap_princomp}}
}
\examples{
## Data referred to here provides global properties (measured and inferred)
## of clusters of stars in the Milky Way galaxy. For details, see ?glob_clus_prop
pca_gc_dyn <- astrowrap("prcomp", gc_dyn)
astrowrap("biplot", pca_gc_dyn)
}
\keyword{astrowrap}

