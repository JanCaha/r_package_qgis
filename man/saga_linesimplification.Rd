% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/saga_linesimplification.R
\name{saga_linesimplification}
\alias{saga_linesimplification}
\title{QGIS algorithm Line simplification}
\usage{
saga_linesimplification(
  LINES = qgisprocess::qgis_default_value(),
  TOLERANCE = qgisprocess::qgis_default_value(),
  OUTPUT = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = TRUE
)
}
\arguments{
\item{LINES}{\code{source} - Lines. Path to a vector layer.}

\item{TOLERANCE}{\code{number} - Tolerance. A numeric value.}

\item{OUTPUT}{\code{vectorDestination} - Simplified Lines. Path for new vector layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifing if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}
}
\description{
QGIS Algorithm provided by SAGA Line simplification (saga:linesimplification)
}
\details{
\subsection{Outputs description}{
\itemize{
\item OUTPUT - outputVector - Simplified Lines
}
}
}
