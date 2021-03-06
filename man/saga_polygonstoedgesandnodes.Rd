% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/saga_polygonstoedgesandnodes.R
\name{saga_polygonstoedgesandnodes}
\alias{saga_polygonstoedgesandnodes}
\title{QGIS algorithm Polygons to edges and nodes}
\usage{
saga_polygonstoedgesandnodes(
  POLYGONS = qgisprocess::qgis_default_value(),
  EDGES = qgisprocess::qgis_default_value(),
  NODES = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = TRUE
)
}
\arguments{
\item{POLYGONS}{\code{source} - Polygons. Path to a vector layer.}

\item{EDGES}{\code{vectorDestination} - Edges. Path for new vector layer.}

\item{NODES}{\code{vectorDestination} - Nodes. Path for new vector layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifing if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}
}
\description{
QGIS Algorithm provided by SAGA Polygons to edges and nodes (saga:polygonstoedgesandnodes)
}
\details{
\subsection{Outputs description}{
\itemize{
\item EDGES - outputVector - Edges
\item NODES - outputVector - Nodes
}
}
}
