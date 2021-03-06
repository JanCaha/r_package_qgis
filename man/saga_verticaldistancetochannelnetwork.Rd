% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/saga_verticaldistancetochannelnetwork.R
\name{saga_verticaldistancetochannelnetwork}
\alias{saga_verticaldistancetochannelnetwork}
\title{QGIS algorithm Vertical distance to channel network}
\usage{
saga_verticaldistancetochannelnetwork(
  ELEVATION = qgisprocess::qgis_default_value(),
  CHANNELS = qgisprocess::qgis_default_value(),
  THRESHOLD = qgisprocess::qgis_default_value(),
  NOUNDERGROUND = qgisprocess::qgis_default_value(),
  DISTANCE = qgisprocess::qgis_default_value(),
  BASELEVEL = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = TRUE
)
}
\arguments{
\item{ELEVATION}{\code{raster} - Elevation. Path to a raster layer.}

\item{CHANNELS}{\code{raster} - Channel Network. Path to a raster layer.}

\item{THRESHOLD}{\code{number} - Tension Threshold (Percentage of Cell Size). A numeric value.}

\item{NOUNDERGROUND}{\code{boolean} - Keep Base Level below Surface. 1 for true/yes. 0 for false/no.}

\item{DISTANCE}{\code{rasterDestination} - Vertical Distance to Channel Network. Path for new raster layer.}

\item{BASELEVEL}{\code{rasterDestination} - Channel Network Base Level. Path for new raster layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifing if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}
}
\description{
QGIS Algorithm provided by SAGA Vertical distance to channel network (saga:verticaldistancetochannelnetwork)
}
\details{
\subsection{Outputs description}{
\itemize{
\item DISTANCE - outputRaster - Vertical Distance to Channel Network
\item BASELEVEL - outputRaster - Channel Network Base Level
}
}
}
