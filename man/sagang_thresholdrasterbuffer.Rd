% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagang_thresholdrasterbuffer.R
\name{sagang_thresholdrasterbuffer}
\alias{sagang_thresholdrasterbuffer}
\title{QGIS algorithm - Threshold raster buffer}
\usage{
sagang_thresholdrasterbuffer(
  FEATURES = qgisprocess:::qgis_default_value(),
  VALUE = qgisprocess:::qgis_default_value(),
  THRESHOLDGRID = qgisprocess:::qgis_default_value(),
  BUFFER = qgisprocess:::qgis_default_value(),
  THRESHOLD = qgisprocess:::qgis_default_value(),
  THRESHOLDTYPE = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{FEATURES}{\code{raster} - Features Grid. Path to a raster layer.}

\item{VALUE}{\code{raster} - Value Grid. Path to a raster layer.}

\item{THRESHOLDGRID}{\code{raster} - Threshold Grid. Path to a raster layer.}

\item{BUFFER}{\code{rasterDestination} - Buffer Grid. Path for new raster layer.}

\item{THRESHOLD}{\code{number} - Threshold. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{THRESHOLDTYPE}{\code{enum}  of \verb{("(0) Absolute", "(1) Relative from cell value")} - Threshold Type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by SAGA Next Gen Threshold raster buffer (sagang:thresholdrasterbuffer). ---------------- Arguments ----------------  FEATURES: Features Grid 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer VALUE: Value Grid 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer THRESHOLDGRID: Threshold Grid (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer BUFFER: Buffer Grid 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer THRESHOLD: Threshold 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression THRESHOLDTYPE: Threshold Type 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) Absolute 		- 1: (1) Relative from cell value 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
}
\details{
\subsection{Outputs description}{
\itemize{
\item BUFFER - outputRaster - Buffer Grid
}
}
}
