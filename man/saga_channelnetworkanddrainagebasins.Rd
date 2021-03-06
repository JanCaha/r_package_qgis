% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/saga_channelnetworkanddrainagebasins.R
\name{saga_channelnetworkanddrainagebasins}
\alias{saga_channelnetworkanddrainagebasins}
\title{QGIS algorithm Channel network and drainage basins}
\usage{
saga_channelnetworkanddrainagebasins(
  DEM = qgisprocess::qgis_default_value(),
  THRESHOLD = qgisprocess::qgis_default_value(),
  DIRECTION = qgisprocess::qgis_default_value(),
  CONNECTION = qgisprocess::qgis_default_value(),
  ORDER = qgisprocess::qgis_default_value(),
  BASIN = qgisprocess::qgis_default_value(),
  SEGMENTS = qgisprocess::qgis_default_value(),
  BASINS = qgisprocess::qgis_default_value(),
  NODES = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = TRUE
)
}
\arguments{
\item{DEM}{\code{raster} - Elevation. Path to a raster layer.}

\item{THRESHOLD}{\code{number} - Threshold. A numeric value.}

\item{DIRECTION}{\code{rasterDestination} - Flow Direction. Path for new raster layer.}

\item{CONNECTION}{\code{rasterDestination} - Flow Connectivity. Path for new raster layer.}

\item{ORDER}{\code{rasterDestination} - Strahler Order. Path for new raster layer.}

\item{BASIN}{\code{rasterDestination} - Drainage Basins. Path for new raster layer.}

\item{SEGMENTS}{\code{vectorDestination} - Channels. Path for new vector layer.}

\item{BASINS}{\code{vectorDestination} - Drainage Basins. Path for new vector layer.}

\item{NODES}{\code{vectorDestination} - Junctions. Path for new vector layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifing if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}
}
\description{
QGIS Algorithm provided by SAGA Channel network and drainage basins (saga:channelnetworkanddrainagebasins)
}
\details{
\subsection{Outputs description}{
\itemize{
\item DIRECTION - outputRaster - Flow Direction
\item CONNECTION - outputRaster - Flow Connectivity
\item ORDER - outputRaster - Strahler Order
\item BASIN - outputRaster - Drainage Basins
\item SEGMENTS - outputVector - Channels
\item BASINS - outputVector - Drainage Basins
\item NODES - outputVector - Junctions
}
}
}
