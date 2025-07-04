% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gdal_viewshed.R
\name{gdal_viewshed}
\alias{gdal_viewshed}
\title{QGIS algorithm - Viewshed}
\usage{
gdal_viewshed(
  INPUT = qgisprocess:::qgis_default_value(),
  BAND = qgisprocess:::qgis_default_value(),
  OBSERVER = qgisprocess:::qgis_default_value(),
  OBSERVER_HEIGHT = qgisprocess:::qgis_default_value(),
  TARGET_HEIGHT = qgisprocess:::qgis_default_value(),
  MAX_DISTANCE = qgisprocess:::qgis_default_value(),
  CREATION_OPTIONS = qgisprocess:::qgis_default_value(),
  EXTRA = qgisprocess:::qgis_default_value(),
  OUTPUT = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{INPUT}{\code{raster} - Input layer. Path to a raster layer.}

\item{BAND}{\code{band} - Band number. Integer value representing an existing raster band number.}

\item{OBSERVER}{\code{point} - Observer location. Point coordinate as an 'x,y' string, e.g. '1.5,10.1'.}

\item{OBSERVER_HEIGHT}{\code{number} - Observer height, DEM units. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{TARGET_HEIGHT}{\code{number} - Target height, DEM units. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{MAX_DISTANCE}{\code{distance} - Maximum distance from observer to compute visibility. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{CREATION_OPTIONS}{\code{string} - Additional creation options. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{EXTRA}{\code{string} - Additional command-line parameters. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{OUTPUT}{\code{rasterDestination} - Output. Path for new raster layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by GDAL Viewshed (gdal:viewshed). ---------------- Arguments ----------------  INPUT: Input layer 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer BAND: Band number 	Default value:	1 	Argument type:	band 	Acceptable values: 		- Integer value representing an existing raster band number OBSERVER: Observer location 	Argument type:	point 	Acceptable values: 		- Point coordinate as an 'x,y' string, e.g. '1.5,10.1' OBSERVER_HEIGHT: Observer height, DEM units 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression TARGET_HEIGHT: Target height, DEM units 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression MAX_DISTANCE: Maximum distance from observer to compute visibility 	Default value:	100 	Argument type:	distance 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression CREATION_OPTIONS: Additional creation options (optional) 	Default value:	 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression EXTRA: Additional command-line parameters (optional) 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression OUTPUT: Output 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer
}
\details{
\subsection{Outputs description}{
\itemize{
\item OUTPUT - outputRaster - Output
}
}
}
