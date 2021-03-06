% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/saga_polygonidentity.R
\name{saga_polygonidentity}
\alias{saga_polygonidentity}
\title{QGIS algorithm Polygon identity}
\usage{
saga_polygonidentity(
  A = qgisprocess::qgis_default_value(),
  B = qgisprocess::qgis_default_value(),
  SPLIT = qgisprocess::qgis_default_value(),
  RESULT = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = TRUE
)
}
\arguments{
\item{A}{\code{source} - Layer A. Path to a vector layer.}

\item{B}{\code{source} - Layer B. Path to a vector layer.}

\item{SPLIT}{\code{boolean} - Split Parts. 1 for true/yes. 0 for false/no.}

\item{RESULT}{\code{vectorDestination} - Identity. Path for new vector layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifing if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}
}
\description{
QGIS Algorithm provided by SAGA Polygon identity (saga:polygonidentity)
}
\details{
\subsection{Outputs description}{
\itemize{
\item RESULT - outputVector - Identity
}
}
}
