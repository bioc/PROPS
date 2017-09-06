\name{kegg_pathway_edges}
\alias{kegg_pathway_edges}
\docType{data}
\title{
KEGG pathway edges
}
\description{
Kyoto Encyclopedia of Genes and Genomes (KEGG) pathway edges, obtained using the KEGGgraph package and parsing the xml files available from KEGG. Pathway edge data are formatted as a data frame with 3 columns, where columns 1 and 2 are the source (from) and sink (to) of the edge, and column 3 is the pathway ID or pathway name the edge belongs to. KEGG is the default pathway database to be used for calculating probabilistic pathway scores. Users may instead choose to provide their own pathway edges if desired.
}
\usage{data("kegg_pathway_edges")}
\format{
  A data frame with 80642 observations on the following 3 variables.
}