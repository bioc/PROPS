\name{PROPS-package}
\alias{PROPS-package}
\alias{PROPS}
\docType{package}
\title{
\packageTitle{PROPS}
}
\description{
\packageDescription{PROPS}
}
\details{

The DESCRIPTION file:
\packageDESCRIPTION{PROPS}
\packageIndices{PROPS}
Calculates PRObabilistic Pathway Scores (PROPS), which are pathway-based features, from gene-based data.
}
\author{
\packageAuthor{PROPS}

Maintainer: \packageMaintainer{PROPS}
}
\references{
Lichy Han, Mateusz Maciejewski, Christoph Brockel, William Gordon, Scott B. Snapper, Joshua R. Korzenik, Lovisa Afzelius, Russ B. Altman. A PRObabilistic Pathway Score (PROPS) for Classification with Applications to Inflammatory Bowel Disease. 
}
\examples{
#Load in randomly generated example data
#Each row is a sample
#Each column is a gene, named with Entrez Gene ID
data(example_healthy)
data(example_data)

#Run PROPS with default KEGG pathway edges
props_features <- props(example_healthy, example_data)

#Run PROPS with user input edges
data(example_edges)
props_features2 <- props(example_healthy, example_data, example_edges)

}
