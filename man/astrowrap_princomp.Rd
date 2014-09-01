\name{astrowrap_princomp}
\alias{astrowrap_princomp}
\title{Principal Component Analysis}
\description{
  To perform R-mode principal component analysis on a given numeric data frame or matrix.
}

\usage{
  astrowrap("princomp", ...)
}
\arguments{
  \item{...}{expressions evaluated in the context of the \code{\link[stats]{princomp}}}
}
\seealso{
\code{\link{astrowrap_summary.princomp}}, \code{\link{astrowrap_prcomp}}
}
\examples{
## <Ashish: a brief description of the data set required>
data(crts_lcstat)
summary(crts_lcstat)
lcstat_pca <- astrowrap("princomp", crts_lcstat[,-1], cor=TRUE)
loadings(lcstat_pca)
lcstat_pca_scores <- as.data.frame(lcstat_pca$scores)

## <Ashish: Can there be a comment on the plot below?>
plot(lcstat_pca_scores$Comp.1, lcstat_pca_scores$Comp.2, 
     col=factor(crts_lcstat$class), pch=20, cex=0.5, 
     xlab="Component 1", ylab="Component 2")
legend(-12, 14, unique(crts_lcstat$class), col=1:length(crts_lcstat$class), pch=20, horiz=TRUE)
}
\keyword{astrowrap}
