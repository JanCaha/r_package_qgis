% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/saga_destriping.R
\name{saga_destriping}
\alias{saga_destriping}
\title{QGIS algorithm Destriping}
\usage{
saga_destriping(
  INPUT = qgisprocess::qgis_default_value(),
  RESULT3 = qgisprocess::qgis_default_value(),
  RESULT1 = qgisprocess::qgis_default_value(),
  RESULT2 = qgisprocess::qgis_default_value(),
  ANG = qgisprocess::qgis_default_value(),
  R = qgisprocess::qgis_default_value(),
  D = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = TRUE
)
}
\arguments{
\item{INPUT}{\code{raster} - Input. Path to a raster layer.}

\item{RESULT3}{\code{rasterDestination} - Destriped Grid. Path for new raster layer.}

\item{RESULT1}{\code{rasterDestination} - Low-pass 1. Path for new raster layer.}

\item{RESULT2}{\code{rasterDestination} - Low-pass 2. Path for new raster layer.}

\item{ANG}{\code{number} - Angle (in degrees). A numeric value.}

\item{R}{\code{number} - Radius. A numeric value.}

\item{D}{\code{number} - Stripes distance. A numeric value.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifing if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}
}
\description{
QGIS Algorithm provided by SAGA Destriping (saga:destriping)
}
\details{
\subsection{Outputs description}{
\itemize{
\item RESULT3 - outputRaster - Destriped Grid
\item RESULT1 - outputRaster - Low
\item RESULT2 - outputRaster - Low
}
}
}
