% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/saga_watershedbasins.R
\name{saga_watershedbasins}
\alias{saga_watershedbasins}
\title{QGIS algorithm Watershed basins}
\usage{
saga_watershedbasins(
  ELEVATION = qgisprocess::qgis_default_value(),
  CHANNELS = qgisprocess::qgis_default_value(),
  SINKROUTE = qgisprocess::qgis_default_value(),
  MINSIZE = qgisprocess::qgis_default_value(),
  BASINS = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = TRUE
)
}
\arguments{
\item{ELEVATION}{\code{raster} - Elevation. Path to a raster layer.}

\item{CHANNELS}{\code{raster} - Channel Network. Path to a raster layer.}

\item{SINKROUTE}{\code{raster} - Sink Route. Path to a raster layer.}

\item{MINSIZE}{\code{number} - Min. Size. A numeric value.}

\item{BASINS}{\code{rasterDestination} - Watershed Basins. Path for new raster layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifing if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}
}
\description{
QGIS Algorithm provided by SAGA Watershed basins (saga:watershedbasins)
}
\details{
\subsection{Outputs description}{
\itemize{
\item BASINS - outputRaster - Watershed Basins
}
}
}
