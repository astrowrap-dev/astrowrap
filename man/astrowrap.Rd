\name{astrowrap}
\alias{astrowrap}
\title{Wrapper to execute a desired function}
\usage{
  astrowrap(test_name, ...)
}
\arguments{
  \item{test_name}{a character object of the name of the
  function to be executed}

  \item{...}{expressions evaluated in the context of the
  \code{test_name}}
}
\description{
  \code{astrowrap} allows for easy execution of functions
  that the IVOA KDD-IG describes as "algorithms and
  techniques astronomers could benefit from but seldom
  use".
}
\details{
  This is a generic function that executes a function with
  the supplied set of parameters. Details of these
  parameters can be obtained from the function"s original
  documentation.
}
\examples{

}
\keyword{astrowrap}