% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagang_enhancedvegetationindex.R
\name{sagang_enhancedvegetationindex}
\alias{sagang_enhancedvegetationindex}
\title{QGIS algorithm - Enhanced vegetation index}
\usage{
sagang_enhancedvegetationindex(
  BLUE = qgisprocess:::qgis_default_value(),
  RED = qgisprocess:::qgis_default_value(),
  NIR = qgisprocess:::qgis_default_value(),
  EVI = qgisprocess:::qgis_default_value(),
  GAIN = qgisprocess:::qgis_default_value(),
  L = qgisprocess:::qgis_default_value(),
  CBLUE = qgisprocess:::qgis_default_value(),
  CRED = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{BLUE}{\code{raster} - Blue Reflectance. Path to a raster layer.}

\item{RED}{\code{raster} - Red Reflectance. Path to a raster layer.}

\item{NIR}{\code{raster} - Near Infrared Reflectance. Path to a raster layer.}

\item{EVI}{\code{rasterDestination} - Enhanced Vegetation Index. Path for new raster layer.}

\item{GAIN}{\code{number} - Gain. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{L}{\code{number} - Canopy Background Adjustment. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{CBLUE}{\code{number} - Aerosol Resistance Coefficient (Blue). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{CRED}{\code{number} - Aerosol Resistance Coefficient (Red). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by SAGA Next Gen Enhanced vegetation index (sagang:enhancedvegetationindex). ---------------- Arguments ----------------  BLUE: Blue Reflectance (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer RED: Red Reflectance 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer NIR: Near Infrared Reflectance 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer EVI: Enhanced Vegetation Index 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer GAIN: Gain 	Default value:	2.5 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression L: Canopy Background Adjustment 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression CBLUE: Aerosol Resistance Coefficient (Blue) 	Default value:	7.5 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression CRED: Aerosol Resistance Coefficient (Red) 	Default value:	6 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
}
\details{
\subsection{Outputs description}{
\itemize{
\item EVI - outputRaster - Enhanced Vegetation Index
}
}
}
