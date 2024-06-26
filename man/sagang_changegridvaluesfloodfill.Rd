% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagang_changegridvaluesfloodfill.R
\name{sagang_changegridvaluesfloodfill}
\alias{sagang_changegridvaluesfloodfill}
\title{QGIS algorithm - Change grid values - flood fill}
\usage{
sagang_changegridvaluesfloodfill(
  POINTS = qgisprocess:::qgis_default_value(),
  GRID = qgisprocess:::qgis_default_value(),
  GRID_OUT = qgisprocess:::qgis_default_value(),
  REPLACE = qgisprocess:::qgis_default_value(),
  REPLACE_VALUE = qgisprocess:::qgis_default_value(),
  TOLERANCE = qgisprocess:::qgis_default_value(),
  IGNORE_NODATA = qgisprocess:::qgis_default_value(),
  FILL_NODATA = qgisprocess:::qgis_default_value(),
  FILL_VALUE = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{POINTS}{\code{source} - Points. Path to a vector layer.}

\item{GRID}{\code{raster} - Grid. Path to a raster layer.}

\item{GRID_OUT}{\code{rasterDestination} - Changed Grid. Path for new raster layer.}

\item{REPLACE}{\code{enum}  of \verb{("(0) value at mouse position", "(1) fixed value")} - Value to be replaced. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{REPLACE_VALUE}{\code{number} - Fixed value to be replaced. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{TOLERANCE}{\code{number} - Tolerance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{IGNORE_NODATA}{\code{boolean} - Ignore No-Data. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{FILL_NODATA}{\code{boolean} - Fill with No-Data. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{FILL_VALUE}{\code{number} - Fill Value. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by SAGA Next Gen Change grid values - flood fill (sagang:changegridvaluesfloodfill). ---------------- Arguments ----------------  POINTS: Points 	Argument type:	source 	Acceptable values: 		- Path to a vector layer GRID: Grid 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer GRID_OUT: Changed Grid 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer REPLACE: Value to be replaced 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) value at mouse position 		- 1: (1) fixed value 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' REPLACE_VALUE: Fixed value to be replaced 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression TOLERANCE: Tolerance 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression IGNORE_NODATA: Ignore No-Data 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression FILL_NODATA: Fill with No-Data 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression FILL_VALUE: Fill Value 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
}
\details{
\subsection{Outputs description}{
\itemize{
\item GRID_OUT - outputRaster - Changed Grid
}
}
}
