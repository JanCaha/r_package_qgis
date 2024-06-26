% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagang_skyviewfactor.R
\name{sagang_skyviewfactor}
\alias{sagang_skyviewfactor}
\title{QGIS algorithm - Sky view factor}
\usage{
sagang_skyviewfactor(
  DEM = qgisprocess:::qgis_default_value(),
  VISIBLE = qgisprocess:::qgis_default_value(),
  SVF = qgisprocess:::qgis_default_value(),
  SIMPLE = qgisprocess:::qgis_default_value(),
  TERRAIN = qgisprocess:::qgis_default_value(),
  DISTANCE = qgisprocess:::qgis_default_value(),
  RADIUS = qgisprocess:::qgis_default_value(),
  NDIRS = qgisprocess:::qgis_default_value(),
  METHOD = qgisprocess:::qgis_default_value(),
  DLEVEL = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{DEM}{\code{raster} - Elevation. Path to a raster layer.}

\item{VISIBLE}{\code{rasterDestination} - Visible Sky. Path for new raster layer.}

\item{SVF}{\code{rasterDestination} - Sky View Factor. Path for new raster layer.}

\item{SIMPLE}{\code{rasterDestination} - Sky View Factor (Simplified). Path for new raster layer.}

\item{TERRAIN}{\code{rasterDestination} - Terrain View Factor. Path for new raster layer.}

\item{DISTANCE}{\code{rasterDestination} - Average View Distance. Path for new raster layer.}

\item{RADIUS}{\code{number} - Maximum Search Radius. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{NDIRS}{\code{number} - Number of Sectors. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{METHOD}{\code{enum}  of \verb{("(0) cell size", "(1) multi scale")} - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{DLEVEL}{\code{number} - Multi Scale Factor. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by SAGA Next Gen Sky view factor (sagang:skyviewfactor). ---------------- Arguments ----------------  DEM: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer VISIBLE: Visible Sky 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer SVF: Sky View Factor 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer SIMPLE: Sky View Factor (Simplified) 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer TERRAIN: Terrain View Factor 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer DISTANCE: Average View Distance 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer RADIUS: Maximum Search Radius 	Default value:	10000 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression NDIRS: Number of Sectors 	Default value:	8 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression METHOD: Method 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) cell size 		- 1: (1) multi scale 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' DLEVEL: Multi Scale Factor 	Default value:	3 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
}
\details{
\subsection{Outputs description}{
\itemize{
\item DISTANCE - outputRaster - Average View Distance
\item SIMPLE - outputRaster - Sky View Factor (Simplified)
\item SVF - outputRaster - Sky View Factor
\item TERRAIN - outputRaster - Terrain View Factor
\item VISIBLE - outputRaster - Visible Sky
}
}
}
