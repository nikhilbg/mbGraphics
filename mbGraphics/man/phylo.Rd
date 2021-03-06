% Generated by roxygen2 (4.0.1): do not edit by hand
\name{phylo}
\alias{phylo}
\title{Plots phylogenetic breakdown}
\usage{
phylo(meta.frame, data.types, tax.key, tax.data, min.stack.proportion = 0.014)
}
\arguments{
\item{meta.frame}{A data frame containing all data. Two columns must be titled 'adiv' and
'nseqs' and must contain the alpha diversity values and number of sequences respectively. All
other information be metadata or categorical/continuous variables that describe the samples.}

\item{data.types}{A list containing text indicators of each meta.frame column data type
in order. Input text for each list element are 'cat', 'cont', and 'meta'.}

\item{tax.key}{Taxonomical key table created from file generated by mothur}

\item{tax.data}{Taxonomical data table created from file generated by mothur}

\item{min.stack.proportion}{Decimal value dictating minimum proprtion of a clade for it to
receive its own stack on the final plot.}
}
\value{
No output is returned. Graph file generated: "TaxonomicComposition.pdf"
}
\description{
This function generates a file, plotting the phylogenetic breakdown
of each sample, using taxonomical data from mothur.
}
\examples{
meta.frame <- read.table("IECG57L01.graphics_data.txt", skip=1, header=TRUE, stringsAsFactors=FALSE)
data.types <- strsplit(readLines("IECG57L01.graphics_data.txt")[1], '\\t')[[1]]
tax.key <- read.table('IECG57L01.final.pick.tx.1.cons.taxonomy', header = TRUE, stringsAsFactors = FALSE)
tax.data <- read.table('IECG57L01.final.pick.tx.shared', header = TRUE, stringsAsFactors = FALSE)
phylo(meta.frame, data.types, tax.key, tax.data, min.stack.proportion = 0.014)
}
\keyword{keywords}

