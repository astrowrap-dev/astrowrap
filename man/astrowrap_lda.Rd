\name{astrowrap_lda} 
\alias{astrowrap_lda} 
\title{Linear Discriminant Analysis}

\description{ 
Perform LDA using a specified model of binary-valued dependent
variable (Y) and continuous independent variables (X).  
}

\usage{ astrowrap("lda", formula, data, ...) }

\arguments{ 
    \item{formula}{A formula in the form 'class ~ x1 + x2 + ...' explaining which discriminants are most viable for segregating the groups of the classification variable.}
    \item{data}{A dataframe from which variables are used in 'formula'.}
    \item{...}{Expressions evaluated in the context of \code{\link[MASS]{lda}}.} 
}

\references{ 
Venables, W. N., & Ripley, B. D. (2002). Modern applied statistics
with S. Springer. \cr 
Drake, A. J., et al. "First results from the Catalina
real-time transient survey." The Astrophysical Journal 696.1 (2009): 870.  }

\seealso{ 
\code{crts_lcstat} 
}

\examples{ 
### The CRTS data (crts_lcstat) provides about 20 statistics proposed
### by Richards et al. for analysing lightcurves. The data also contains
### classification of 3966 objects into 7 types of transients and non-variables.
### An outstanding problem in this regard is to create a classification
### algorithm that separates transients from the non-variables. One method of
### doing so is to perform LDA using a subset of parameters. \cr


### Segregate the observations into 2 categories instead of the existing 8. \cr

data(crts_lcstat) crts_2obj <- crts_lcstat levels(crts_2obj) <- c(rep("V", 5),
"NV", rep("V", 2))


### View the distributions of various parameters, segregated by  object type. \cr

library(ggplot2)
crts_2obj_dens_plt <- lapply(X = names(crts_2obj)[-c(1, 22,
23)], FUN = function(par_name) {
    ggplot(data = crts_2obj, aes_string(x = par_name,
        colour = "class", group = "class")) + geom_density()
    }) # Variables excluded: Object ID, rcorbor, class 
crts_2obj_dens_plt[[1]] # Change the indices to view other parameters


### The parameter "Stetson's J" appears to best differentiate the two classes of
### objects and hence can be used in LDA. \cr

library(MASS) 
crts_2obj_lda_sj <- lda(class ~ stet_j, data = crts_2obj, na.action = "na.omit", CV = TRUE) 


## Test the accuracy of LDA predictions. \cr
print(round(prop.table(table(crts_2obj$class, crts_2obj_lda_sj$class), 1), 2))


### Two things to infer from the table: prediction accuracy of variables (i.e.
### transients) [90\%] is much higher than that of non-variables [10\%] & while
### the data has almost equal population of variables and non-variables, LDA
### predicts the observations to be variables ~66\% of the times. \cr


### Exercise: try modifying the input model in LDA to get better prediction
### rates. 
}

\keyword{astrowrap}
