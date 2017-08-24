\name{example_edges}
\alias{example_edges}
\docType{data}
\title{
Example pathway edges. Contains 3 randomly generated pathways.
}
\description{
Example pathway edges. Contains 3 randomly generated pathways. User input edges should be a data frame with 3 columns, where columns 1 and 2 are the source (from) and sink (to) of the edge, and column 3 is the pathway ID or name the edge belongs to.
}
\usage{data("example_edges")}
\format{
  A data frame with 300 observations on the following 3 variables.
  \describe{
    \item{\code{from}}{a character vector}
    \item{\code{to}}{a character vector}
    \item{\code{pathway_ID}}{a character vector}
  }
}