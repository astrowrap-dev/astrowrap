\name{astrowrap_agnes}
\alias{astrowrap_agnes}
\title{Agglomerative Clustering}
\description{
  To perform agglomerative hierarchical clustering of a data set.
}

\usage{
  astrowrap("agnes", x, diss, metric, ...)
}
\arguments{
    \item{x}{data as a matrix or dataframe or the dissimilarity matrix if diss is set to TRUE}
    \item{diss}{logical vector to specify if the input structure is a dissimilarity matrix}
    \item{metric}{method to be used to calculating dissimilarities between individual observations. Currently, "euclidean" and "manhattan" are supported.}
    \item{...}{expressions evaluated in the context of the \code{\link[cluster]{agnes}}}
}
\examples{
## <Ashish: a brief description of the data set required>
data(crts_lcstat)
summary(crts_lcstat)

## Aggregate variables on the basis of "class"
lcstat_agg <- aggregate(crts_lcstat[, -c(1, 22, 23)],
 list(factor(crts_lcstat$class)), mean)
row.names(lcstat_agg) <- lcstat_agg$Group.1 
lcstat_agg <- lcstat_agg[,-1] 
lcstat_agn <- astrowrap("agnes", lcstat_agg, metric="manhattan", stand=TRUE)

## Plot the clusters
plot(lcstat_agn, main="", xlab="", which=2)
}
\keyword{astrowrap}
