% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/saga_localminimaandmaxima.R
\name{saga_localminimaandmaxima}
\alias{saga_localminimaandmaxima}
\title{QGIS algorithm Local minima and maxima}
\usage{
saga_localminimaandmaxima(
  GRID = qgisprocess::qgis_default_value(),
  MINIMA = qgisprocess::qgis_default_value(),
  MAXIMA = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = TRUE
)
}
\arguments{
\item{GRID}{\code{raster} - Grid. Path to a raster layer.}

\item{MINIMA}{\code{vectorDestination} - Minima. Path for new vector layer.}

\item{MAXIMA}{\code{vectorDestination} - Maxima. Path for new vector layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifing if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}
}
\description{
QGIS Algorithm provided by SAGA Local minima and maxima (saga:localminimaandmaxima)
}
\details{
\subsection{Outputs description}{
\itemize{
\item MINIMA - outputVector - Minima
\item MAXIMA - outputVector - Maxima
}
}
}
