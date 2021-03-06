% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/saga_fitnpointsinpolygon.R
\name{saga_fitnpointsinpolygon}
\alias{saga_fitnpointsinpolygon}
\title{QGIS algorithm Fit n points in polygon}
\usage{
saga_fitnpointsinpolygon(
  SHAPES = qgisprocess::qgis_default_value(),
  NUMPOINTS = qgisprocess::qgis_default_value(),
  POINTS = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = TRUE
)
}
\arguments{
\item{SHAPES}{\code{source} - Shapes. Path to a vector layer.}

\item{NUMPOINTS}{\code{number} - Number of points. A numeric value.}

\item{POINTS}{\code{vectorDestination} - Points. Path for new vector layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifing if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}
}
\description{
QGIS Algorithm provided by SAGA Fit n points in polygon (saga:fitnpointsinpolygon)
}
\details{
\subsection{Outputs description}{
\itemize{
\item POINTS - outputVector - Points
}
}
}
