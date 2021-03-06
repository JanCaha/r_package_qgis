% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/saga_diffusepollutionrisk.R
\name{saga_diffusepollutionrisk}
\alias{saga_diffusepollutionrisk}
\title{QGIS algorithm Diffuse pollution risk}
\usage{
saga_diffusepollutionrisk(
  DEM = qgisprocess::qgis_default_value(),
  CHANNEL = qgisprocess::qgis_default_value(),
  WEIGHT = qgisprocess::qgis_default_value(),
  WEIGHT_DEFAULT = qgisprocess::qgis_default_value(),
  RAIN = qgisprocess::qgis_default_value(),
  RAIN_DEFAULT = qgisprocess::qgis_default_value(),
  DELIVERY = qgisprocess::qgis_default_value(),
  RISK_POINT = qgisprocess::qgis_default_value(),
  RISK_DIFFUSE = qgisprocess::qgis_default_value(),
  METHOD = qgisprocess::qgis_default_value(),
  CHANNEL_START = qgisprocess::qgis_default_value(),
  ...,
  .complete_output = TRUE
)
}
\arguments{
\item{DEM}{\code{raster} - Elevation. Path to a raster layer.}

\item{CHANNEL}{\code{raster} - Channel Network. Path to a raster layer.}

\item{WEIGHT}{\code{raster} - Land Cover Weights. Path to a raster layer.}

\item{WEIGHT_DEFAULT}{\code{number} - Default. A numeric value.}

\item{RAIN}{\code{raster} - Rainfall. Path to a raster layer.}

\item{RAIN_DEFAULT}{\code{number} - Default. A numeric value.}

\item{DELIVERY}{\code{rasterDestination} - Delivery Index. Path for new raster layer.}

\item{RISK_POINT}{\code{rasterDestination} - Locational Risk. Path for new raster layer.}

\item{RISK_DIFFUSE}{\code{rasterDestination} - Diffuse Pollution Risk. Path for new raster layer.}

\item{METHOD}{\code{enum}  of \verb{("[0] single", "[1] multiple")} - Flow Direction Algorithm. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{CHANNEL_START}{\code{number} - Channel Initiation Threshold. A numeric value.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifing if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}
}
\description{
QGIS Algorithm provided by SAGA Diffuse pollution risk (saga:diffusepollutionrisk)
}
\details{
\subsection{Outputs description}{
\itemize{
\item DELIVERY - outputRaster - Delivery Index
\item RISK_POINT - outputRaster - Locational Risk
\item RISK_DIFFUSE - outputRaster - Diffuse Pollution Risk
}
}
}
