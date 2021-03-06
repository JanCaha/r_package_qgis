% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/saga_convertlinestopoints.R
\name{saga_convertlinestopoints}
\alias{saga_convertlinestopoints}
\title{QGIS algorithm Convert lines to points}
\usage{
saga_convertlinestopoints(
  LINES = qgisprocess::qgis_default_value(),
  ADD = qgisprocess::qgis_default_value(),
  DIST = qgisprocess::qgis_default_value(),
  POINTS = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = TRUE
)
}
\arguments{
\item{LINES}{\code{source} - Lines. Path to a vector layer.}

\item{ADD}{\code{boolean} - Insert Additional Points. 1 for true/yes. 0 for false/no.}

\item{DIST}{\code{number} - Insert Distance. A numeric value.}

\item{POINTS}{\code{vectorDestination} - Points. Path for new vector layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifing if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}
}
\description{
QGIS Algorithm provided by SAGA Convert lines to points (saga:convertlinestopoints)
}
\details{
\subsection{Outputs description}{
\itemize{
\item POINTS - outputVector - Points
}
}
}
