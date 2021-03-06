% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/saga_windeffect.R
\name{saga_windeffect}
\alias{saga_windeffect}
\title{QGIS algorithm Wind effect}
\usage{
saga_windeffect(
  DEM = qgisprocess::qgis_default_value(),
  DIR = qgisprocess::qgis_default_value(),
  LEN = qgisprocess::qgis_default_value(),
  DIR_CONST = qgisprocess::qgis_default_value(),
  OLDVER = qgisprocess::qgis_default_value(),
  MAXDIST = qgisprocess::qgis_default_value(),
  ACCEL = qgisprocess::qgis_default_value(),
  PYRAMIDS = qgisprocess::qgis_default_value(),
  DIR_UNITS = qgisprocess::qgis_default_value(),
  LEN_SCALE = qgisprocess::qgis_default_value(),
  EFFECT = qgisprocess::qgis_default_value(),
  LUV = qgisprocess::qgis_default_value(),
  LEE = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = TRUE
)
}
\arguments{
\item{DEM}{\code{raster} - Elevation. Path to a raster layer.}

\item{DIR}{\code{raster} - Wind Direction. Path to a raster layer.}

\item{LEN}{\code{raster} - Wind Speed. Path to a raster layer.}

\item{DIR_CONST}{\code{number} - Constant Wind Direction (Degree). A numeric value.}

\item{OLDVER}{\code{boolean} - Old Version. 1 for true/yes. 0 for false/no.}

\item{MAXDIST}{\code{number} - Search Distance (km). A numeric value.}

\item{ACCEL}{\code{number} - Acceleration. A numeric value.}

\item{PYRAMIDS}{\code{boolean} - Use Pyramids. 1 for true/yes. 0 for false/no.}

\item{DIR_UNITS}{\code{enum}  of \verb{("[0] radians", "[1] degree")} - Wind Direction Units. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{LEN_SCALE}{\code{number} - Wind Speed Scale Factor. A numeric value.}

\item{EFFECT}{\code{rasterDestination} - Wind Effect. Path for new raster layer.}

\item{LUV}{\code{rasterDestination} - Windward Effect. Path for new raster layer.}

\item{LEE}{\code{rasterDestination} - Leeward Effect. Path for new raster layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifing if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}
}
\description{
QGIS Algorithm provided by SAGA Wind effect (saga:windeffect)
}
\details{
\subsection{Outputs description}{
\itemize{
\item EFFECT - outputRaster - Wind Effect
\item LUV - outputRaster - Windward Effect
\item LEE - outputRaster - Leeward Effect
}
}
}
