\name{astrowrap_kmeans}
\alias{astrowrap_kmeans}
\title{k-Means clustering}

\description{
  To perform k-means clustering on a multivariate data set.
}

\usage{
astrowrap("kmeans", x, centers, iter.max, nstart, ...)
}

\arguments{
    \item{x}{A numeric matrix (or an object coercible to a matrix).}
    \item{centers}{Number of clusters to create in the data or a numeric vector specifying the cluster centers to begin with.}
    \item{iter.max}{Maximum number of permissible iterations of the algorithm.}
    \item{nstart}{Number of cluster centers to perform the clustering with.}
    \item{...}{Expressions evaluated in the context of the \code{\link[stats]{kmeans}}.}
}

\references{
Chattopadhyay, A. K., Chattopadhyay, T., Davoust, E., Mondal, S., & Sharina, M. (2009). Study of NGC 5128 globular clusters under multivariate statistical paradigm. \emph{The Astrophysical Journal, 705(2)}, 1533.
}

\examples{
### The data provided in Chattopadhyay and Chattopadhyay (2009) consists of a
### sample of globular clusters from NGC5128, a giant elliptical galaxy in the
### Centaurus group. Structural and photometric parameters, that total to 35,
### describe the clusters in this galaxy.

### Since the number of variables is very high, it makes sense to reduce the 
### dimensionality of the data using Principal Component Analysis. Based on 
### the discussion in Chattopadhyay and Chattopadhyay (2009), we know that 
### three parameters, half-light radious(Rh), predicted line of sight velocity
### dispersion at the cluster centre (sigmap0), and V surface brightness 
### averaged over Rh (muvh), produce a principal compoenent that explains > 90\%
### of variation in the data set. \cr

data(ngc5128)
summary(ngc5128)

ngc5128_pca <- ngc5128[, c("log_rh", "sigma_p0", "mu_vh")]
astrowrap("summary", astrowrap("princomp", ngc5128_pca))


### Using these three variables and the method suggested by Sugar and James (2003), 
### it is determined that the optimum number of clusters for this data set is 3. \cr

ngc5128_clus <- ngc5128[-c(which(ngc5128$NAME \%in\% c("C156", "C159", "FIGC15"), arr.ind=TRUE)), -1]
ngc5128_kmeans <- astrowrap("kmeans", ngc5128_pca, centers=3)
qplot(log_Mtot, sigma_p0, data=ngc5128, colour=as.factor(ngc5128_kmeans$cluster)) + 
 xlab("log(Mass)") + ylab(expression(sigma[p]~""[","]~""[0])) + labs(colour="Cluster")


### We next aggregate the parameters of clusters according to their cluster membership
### to understand the differences between the groups. We see some variation amongst 
### clusters like the photometric metallicity is distinctively different between clusters. \cr

ngc5128_clus$Cluster <- ngc5128_kmeans$cluster
pars_by_clus <- as.data.frame(t(aggregate(ngc5128_clus[, -c(which(names(ngc5128_clus)=="Cluster",
 arr.ind=TRUE))], list(ngc5128_clus$Cluster), FUN=mean)))
names(pars_by_clus) <- paste("Cluster ", pars_by_clus[1,], sep="")
(pars_by_clus <- pars_by_clus[-1,])

### To include: a plot that shows how, in certain clusters, metallicity of a cluster determines
### its ellipticity and size.
}

\keyword{astrowrap}
