\name{astrowrap_cophenetic}
\alias{astrowrap_cophenetic}
\title{Cophenetic Distance}
\description{
  To calculate cophenetic distance between observations for use in hierarchical clustering algorithms.
}

\usage{
  astrowrap("cophenetic", ...)
}
\arguments{
  \item{...}{expressions evaluated in the context of the \code{\link[stats]{cophenetic}}}
}
\examples{
## A replica of the original documentation example (?cophenetic) which 
## uses the data set "USArrests". Not sure of its appropriateness.
data(crts_lcstat)

# Amplitude, Linear Trend, Percent Amplitude, and Standard Deviation
# are included for clustering
lcstat_data_cop <- crts_lcstat[, c(2, 9, 14, 18)]
summary(lcstat_data_cop)
dist_euc <- dist(lcstat_data_cop)
hclust_1 <- astrowrap("hclust", dist_euc, "ave")
dist_cop <- astrowrap("cophenetic", hclust_1)
cor(dist_euc, dist_cop) # 0.9345
}
\keyword{astrowrap}
