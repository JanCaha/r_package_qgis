% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagang_closegapswithspline.R
\name{sagang_closegapswithspline}
\alias{sagang_closegapswithspline}
\title{QGIS algorithm - Close gaps with spline}
\usage{
sagang_closegapswithspline(
  GRID = qgisprocess:::qgis_default_value(),
  MASK = qgisprocess:::qgis_default_value(),
  MAXGAPCELLS = qgisprocess:::qgis_default_value(),
  CLOSED = qgisprocess:::qgis_default_value(),
  MAXPOINTS = qgisprocess:::qgis_default_value(),
  LOCALPOINTS = qgisprocess:::qgis_default_value(),
  EXTENDED = qgisprocess:::qgis_default_value(),
  NEIGHBOURS = qgisprocess:::qgis_default_value(),
  RADIUS = qgisprocess:::qgis_default_value(),
  RELAXATION = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{GRID}{\code{raster} - Grid. Path to a raster layer.}

\item{MASK}{\code{raster} - Mask. Path to a raster layer.}

\item{MAXGAPCELLS}{\code{number} - Only Process Gaps with Less Cells. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{CLOSED}{\code{rasterDestination} - Closed Gaps Grid. Path for new raster layer.}

\item{MAXPOINTS}{\code{number} - Maximum Points. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{LOCALPOINTS}{\code{number} - Number of Points for Local Interpolation. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{EXTENDED}{\code{boolean} - Extended Neighourhood. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{NEIGHBOURS}{\code{enum}  of \verb{("(0) Neumann", "(1) Moore")} - Neighbourhood. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{RADIUS}{\code{number} - Radius (Cells). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{RELAXATION}{\code{number} - Relaxation. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by SAGA Next Gen Close gaps with spline (sagang:closegapswithspline). ---------------- Arguments ----------------  GRID: Grid 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer MASK: Mask (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer MAXGAPCELLS: Only Process Gaps with Less Cells 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression CLOSED: Closed Gaps Grid 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer MAXPOINTS: Maximum Points 	Default value:	1000 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression LOCALPOINTS: Number of Points for Local Interpolation 	Default value:	20 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression EXTENDED: Extended Neighourhood 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression NEIGHBOURS: Neighbourhood 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) Neumann 		- 1: (1) Moore 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' RADIUS: Radius (Cells) 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression RELAXATION: Relaxation 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
}
\details{
\subsection{Outputs description}{
\itemize{
\item CLOSED - outputRaster - Closed Gaps Grid
}
}
}
