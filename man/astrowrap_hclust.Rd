\name{astrowrap_hclust}
\alias{astrowrap_hclust}
\title{Agglomerative Hierarchical Clustering}
\description{
  Clustering of observations based on a particular type (euclidean, manhattan, canberra, etc) of distance between them.
}

\usage{
astrowrap("hclust", ...)
}
\arguments{
  \item{...}{expressions evaluated in the context of the \code{\link[stats]{hclust}}}
}
\references{
Feigelson, E. D., & Babu, G. J. (2012). \emph{Modern statistical methods for astronomy: with R applications}. Cambridge University Press.
}
\seealso{
\code{astrowrap_kmeans}
}
\examples{
## The combo_17 data provided contains information about both blue and red galaxies. 
## The blue galaxies are usually spiral or irregular in shape with active star 
## formation while the red galaxies are elliptical and old, with some hypothesized 
## to be associated with the beginning of the universe. 
data(combo_17)

## Standardize the variables to compute the distance matrix
mag_std <- scale(combo_17[, 1])
colour_std <- scale(combo_17[, 2])
combo_17_std <- cbind(mag_std, colour_std)

combo_17_dist <- dist(combo_17_std)
combo_17_hcl <- astrowrap('hclust', combo_17_dist, method="complete")

library(ggplot2)
library(ggdendro)
ggdendrogram(combo_17_hcl) + labs(title="Dendrogram for COMBO-17 data")

## Based on the recommendation by Feigelson & Babu (2012), it is worth cutting the
## dendrogram at number of clusters(k) = 5.
combo_17_hcl_cut <- cutree(combo_17_hcl, k=5)
combo_17_coph <- astrowrap("cophenetic", combo_17_hcl)
# Cophenetic correlation provides a measure of similarity between the hierarchical 
# structure given by H-clustering and the data
cor(combo_17_dist, combo_17_coph)
                                  
qplot(M_B, M_280.M_B, data=combo_17, shape=factor(combo_17_hcl_cut), 
	xlab=expression(M[B]~" (mag)"), ylab=expression(M[280] ~" - "~M[B]~" (mag)"))
	+ labs(title="Split into 5 clusters based on the clustering algorithm", 
		shape="Cluster") + theme_bw()
}
\keyword{astrowrap}

