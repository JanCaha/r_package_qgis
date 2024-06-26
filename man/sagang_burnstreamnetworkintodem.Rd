% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagang_burnstreamnetworkintodem.R
\name{sagang_burnstreamnetworkintodem}
\alias{sagang_burnstreamnetworkintodem}
\title{QGIS algorithm - Burn stream network into dem}
\usage{
sagang_burnstreamnetworkintodem(
  DEM = qgisprocess:::qgis_default_value(),
  BURN = qgisprocess:::qgis_default_value(),
  STREAM = qgisprocess:::qgis_default_value(),
  FLOWDIR = qgisprocess:::qgis_default_value(),
  METHOD = qgisprocess:::qgis_default_value(),
  EPSILON = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{DEM}{\code{raster} - DEM. Path to a raster layer.}

\item{BURN}{\code{rasterDestination} - Processed DEM. Path for new raster layer.}

\item{STREAM}{\code{raster} - Streams. Path to a raster layer.}

\item{FLOWDIR}{\code{raster} - Flow Direction. Path to a raster layer.}

\item{METHOD}{\code{enum}  of \verb{("(0) simply decrease cell's value by epsilon", "(1) lower cell's value to neighbours minimum value minus epsilon", "(2) trace stream network downstream")} - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{EPSILON}{\code{number} - Epsilon. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by SAGA Next Gen Burn stream network into dem (sagang:burnstreamnetworkintodem). ---------------- Arguments ----------------  DEM: DEM 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer BURN: Processed DEM 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer STREAM: Streams 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer FLOWDIR: Flow Direction 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer METHOD: Method 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) simply decrease cell's value by epsilon 		- 1: (1) lower cell's value to neighbours minimum value minus epsilon 		- 2: (2) trace stream network downstream 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' EPSILON: Epsilon 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
}
\details{
\subsection{Outputs description}{
\itemize{
\item BURN - outputRaster - Processed DEM
}
}
}
