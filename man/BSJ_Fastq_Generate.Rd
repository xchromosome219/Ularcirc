% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Ularcirc_standalone.R, R/inProgress.R
\name{BSJ_Fastq_Generate}
\alias{BSJ_Fastq_Generate}
\alias{BSJ_Fastq_Generate}
\title{BSJ_Fastq_Generate}
\usage{
BSJ_Fastq_Generate(circRNA_Sequence, fragmentLength = 300, readLength = 100,
  variations = 4, headerID = "")

BSJ_Fastq_Generate(circRNA_Sequence, fragmentLength = 300, readLength = 100,
  variations = 4, headerID = "")
}
\arguments{
\item{circRNA_Sequence}{: Linear sequence of a circRNA. i.e. the backspice junction
is the first and last base of this sequence}

\item{fragmentLength}{: Is the length f the library fragment}

\item{readLength}{: The sequence read length}

\item{circRNA_Sequence}{: Linear sequence of a circRNA. i.e. the backspice junction
is the first and last base of this sequence}

\item{fragmentLength}{: Is the length f the library fragment}

\item{readLength}{: The sequence read length}
}
\value{
Returns a list DNAstring sets.

Returns a list DNAstring sets.
}
\description{
Takes a circRNA predicted sequence and generates synthetic sequence reads that

Takes a circRNA predicted sequence and generates synthetic sequence reads that
}
\examples{

library('Ularcirc')


# Obtain a circRNA sequence
circRNA_Sequence <- circRNA_seq_example
fastqReads <- BSJ_Fastq_Generate(circRNA_Sequence, fragmentLength=300, readLength=100, variations = 4, headerID='')
writeXStringSet( fastqReads$Read_One,"circRNA_Sample_R1.fastq.gz",compress = TRUE, format="fastq")
writeXStringSet( fastqReads$Read_Two,"circRNA_Sample_R2.fastq.gz",compress = TRUE, format="fastq")


library('Ularcirc')


# Obtain a circRNA sequence
circRNA_Sequence <- "ACTGTGTAC"
fastqReads <- BSJ_Fastq_Generate(circRNA_Sequence, fragmentLength=300, readLength=100, variations = 4, headerID='')
writeXStringSet( fastqReads$Read_One,"circRNA_Sample_R1.fastq.gz",compress = TRUE, format="fastq")
writeXStringSet( fastqReads$Read_Two,"circRNA_Sample_R2.fastq.gz",compress = TRUE, format="fastq")


}
