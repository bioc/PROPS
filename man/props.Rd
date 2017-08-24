\name{props}
\alias{props}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
PRObabilistic Pathway Scores (PROPS)
}
\description{
Calculates PRObabilistic Pathway Scores (PROPS), which are pathway-based features, from gene-based data.
}
\usage{
props(healthy_dat, dat, pathway_edges = NULL, batch_correct = FALSE, healthy_batches = NULL, dat_batches = NULL)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{healthy_dat}{
Data frame of healthy data used to parameterize the pathways. Healthy data should be formatted as one sample per row, and columns should correspond to genes and be named by the gene Entrez ID.
}
  \item{dat}{
Data frame of patient data for which to calculate pathway-based scores. Data should be formatted as one sample per row, and columns should correspond to genes and be named by the gene Entrez ID.
}
  \item{pathway_edges}{
Optional user specified pathway edges. If no pathway edges are provided, KEGG pathways are used by default. User input edges should be a data frame with 3 columns, where columns 1 and 2 are the source (from) and sink (to) of the edge, and column 3 is the pathway ID or name the edge belongs to. Genes should be named by Entrez ID.
}
  \item{batch_correct}{
Optional flag to do batch correction using ComBat. If TRUE, then batch numbers must be provided.
}
  \item{healthy_batches}{
Batch covariate numbers, as a numeric vector, corresponding to the healthy data. For example, given 5 healthy patients from two batches, an example input would be (1, 2, 2, 1, 1).
}
\item{dat_batches}{
Batch covariate numbers, as a numeric vector, corresponding to the patient data. For example, given 10 patients from three batches, an example input would be (1, 3, 2, 1, 3, 3, 2, 1, 2, 1). Batch "1" is the same for healthy data and patient data, indicating in this example there are 3 healthy samples and 4 patient samples from the same batch.
}
}
%%\details{
%%  ~~ If necessary, more details than the description above ~~
%%}
\value{
Returns a data frame of pathway-based log-likelihood values, where each row corresponds to a pathway. The first two columns are the KEGG pathway ID and name, and the remaining columns correspond to each sample's pathway features.
}
\references{
Lichy Han, Mateusz Maciejewski, Christoph Brockel, William Gordon, Scott B. Snapper, Joshua R. Korzenik, Lovisa Afzelius, Russ B. Altman. A PRObabilistic Pathway Score (PROPS) for Classification with Applications to Inflammatory Bowel Disease.
}
\author{
Lichy Han
}
%%\note{
%%  ~~further notes~~
%%}

%% ~Make other sections like Warning with \section{Warning }{....} ~

%%\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
%%}
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
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
