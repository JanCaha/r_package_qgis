% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagang_lapseratebasedtemperaturedownscaling.R
\name{sagang_lapseratebasedtemperaturedownscaling}
\alias{sagang_lapseratebasedtemperaturedownscaling}
\title{QGIS algorithm - Lapse rate based temperature downscaling}
\usage{
sagang_lapseratebasedtemperaturedownscaling(
  LORES_DEM = qgisprocess:::qgis_default_value(),
  LORES_T = qgisprocess:::qgis_default_value(),
  LAPSE_RATES = qgisprocess:::qgis_default_value(),
  LORES_SLT = qgisprocess:::qgis_default_value(),
  HIRES_DEM = qgisprocess:::qgis_default_value(),
  HIRES_T = qgisprocess:::qgis_default_value(),
  LAPSE_RATE = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{LORES_DEM}{\code{raster} - Elevation. Path to a raster layer.}

\item{LORES_T}{\code{raster} - Temperature. Path to a raster layer.}

\item{LAPSE_RATES}{\code{raster} - Lapse Rates. Path to a raster layer.}

\item{LORES_SLT}{\code{rasterDestination} - Temperature at Sea Level. Path for new raster layer.}

\item{HIRES_DEM}{\code{raster} - Elevation. Path to a raster layer.}

\item{HIRES_T}{\code{rasterDestination} - Temperature. Path for new raster layer.}

\item{LAPSE_RATE}{\code{number} - Constant Lapse Rate. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by SAGA Next Gen Lapse rate based temperature downscaling (sagang:lapseratebasedtemperaturedownscaling). ---------------- Arguments ----------------  LORES_DEM: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer LORES_T: Temperature 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer LAPSE_RATES: Lapse Rates (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer LORES_SLT: Temperature at Sea Level 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer HIRES_DEM: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer HIRES_T: Temperature 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer LAPSE_RATE: Constant Lapse Rate 	Default value:	0.6 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
}
\details{
\subsection{Outputs description}{
\itemize{
\item HIRES_T - outputRaster - Temperature
\item LORES_SLT - outputRaster - Temperature at Sea Level
}
}
}
