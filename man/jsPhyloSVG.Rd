% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/jsPhyloSVG.R
\name{jsPhyloSVG}
\alias{jsPhyloSVG}
\title{An htmlwidget for jsPhyloSVG}
\usage{
jsPhyloSVG(tree, width = NULL, height = NULL, elementId = NULL,
  circular = TRUE)
}
\arguments{
\item{tree}{Character scalar. A newick tree (for now).}

\item{width, height}{Numeric. With and height of the widget.}

\item{elementId}{See \link[htmlwidgets:createWidget]{htmlwidgets::createWidget}}

\item{circular}{Logical scalar. When \code{TRUE} sets the layout to be cicular.}
}
\description{
Creates an htmlwidget for the jsPhyloSVG javascript library
}
\references{
Smits SA, Ouverney CC, 2010 jsPhyloSVG: A Javascript Library
for Visualizing Interactive and Vector-Based Phylogenetic Trees on the Web.
PLoS ONE 5(8): e12267. \doi{10.1371/journal.pone.0012267}
}
