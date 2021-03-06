% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/saga_accumulatedcost.R
\name{saga_accumulatedcost}
\alias{saga_accumulatedcost}
\title{QGIS algorithm Accumulated cost}
\usage{
saga_accumulatedcost(
  DEST_TYPE = qgisprocess::qgis_default_value(),
  DEST_POINTS = qgisprocess::qgis_default_value(),
  DEST_GRID = qgisprocess::qgis_default_value(),
  COST = qgisprocess::qgis_default_value(),
  DIR_MAXCOST = qgisprocess::qgis_default_value(),
  DIR_UNIT = qgisprocess::qgis_default_value(),
  DIR_K = qgisprocess::qgis_default_value(),
  ACCUMULATED = qgisprocess::qgis_default_value(),
  ALLOCATION = qgisprocess::qgis_default_value(),
  THRESHOLD = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = TRUE
)
}
\arguments{
\item{DEST_TYPE}{\code{enum}  of \verb{("[0] Point", "[1] Grid")} - Input Type of Destinations. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{DEST_POINTS}{\code{source} - Destinations. Path to a vector layer.}

\item{DEST_GRID}{\code{raster} - Destinations. Path to a raster layer.}

\item{COST}{\code{raster} - Local Cost. Path to a raster layer.}

\item{DIR_MAXCOST}{\code{raster} - Direction of Maximum Cost. Path to a raster layer.}

\item{DIR_UNIT}{\code{enum}  of \verb{("[0] radians", "[1] degree")} - Units of Direction. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{DIR_K}{\code{number} - K Factor. A numeric value.}

\item{ACCUMULATED}{\code{rasterDestination} - Accumulated Cost. Path for new raster layer.}

\item{ALLOCATION}{\code{rasterDestination} - Allocation. Path for new raster layer.}

\item{THRESHOLD}{\code{number} - Threshold for different route. A numeric value.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifing if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}
}
\description{
QGIS Algorithm provided by SAGA Accumulated cost (saga:accumulatedcost)
}
\details{
\subsection{Outputs description}{
\itemize{
\item ACCUMULATED - outputRaster - Accumulated Cost
\item ALLOCATION - outputRaster - Allocation
}
}
}
