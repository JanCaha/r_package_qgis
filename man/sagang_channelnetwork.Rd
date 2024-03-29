% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagang_channelnetwork.R
\name{sagang_channelnetwork}
\alias{sagang_channelnetwork}
\title{QGIS algorithm - Channel network}
\usage{
sagang_channelnetwork(
  ELEVATION = qgisprocess:::qgis_default_value(),
  SINKROUTE = qgisprocess:::qgis_default_value(),
  CHNLNTWRK = qgisprocess:::qgis_default_value(),
  CHNLROUTE = qgisprocess:::qgis_default_value(),
  SHAPES = qgisprocess:::qgis_default_value(),
  INIT_GRID = qgisprocess:::qgis_default_value(),
  INIT_METHOD = qgisprocess:::qgis_default_value(),
  INIT_VALUE = qgisprocess:::qgis_default_value(),
  DIV_GRID = qgisprocess:::qgis_default_value(),
  DIV_CELLS = qgisprocess:::qgis_default_value(),
  TRACE_WEIGHT = qgisprocess:::qgis_default_value(),
  MINLEN = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{ELEVATION}{\code{raster} - Elevation. Path to a raster layer.}

\item{SINKROUTE}{\code{raster} - Flow Direction. Path to a raster layer.}

\item{CHNLNTWRK}{\code{rasterDestination} - Channel Network. Path for new raster layer.}

\item{CHNLROUTE}{\code{rasterDestination} - Channel Direction. Path for new raster layer.}

\item{SHAPES}{\code{vectorDestination} - Channel Network. Path for new vector layer.}

\item{INIT_GRID}{\code{raster} - Initiation Grid. Path to a raster layer.}

\item{INIT_METHOD}{\code{enum}  of \verb{("(0) Less than", "(1) Equals", "(2) Greater than")} - Initiation Type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{INIT_VALUE}{\code{number} - Initiation Threshold. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{DIV_GRID}{\code{raster} - Divergence. Path to a raster layer.}

\item{DIV_CELLS}{\code{number} - Tracing: Max. Divergence. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{TRACE_WEIGHT}{\code{raster} - Tracing: Weight. Path to a raster layer.}

\item{MINLEN}{\code{number} - Min. Segment Length. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by SAGA Next Gen Channel network (sagang:channelnetwork). ---------------- Arguments ----------------  ELEVATION: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer SINKROUTE: Flow Direction (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer CHNLNTWRK: Channel Network 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer CHNLROUTE: Channel Direction 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer SHAPES: Channel Network 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer INIT_GRID: Initiation Grid 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer INIT_METHOD: Initiation Type 	Default value:	2 	Argument type:	enum 	Available values: 		- 0: (0) Less than 		- 1: (1) Equals 		- 2: (2) Greater than 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' INIT_VALUE: Initiation Threshold 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DIV_GRID: Divergence (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer DIV_CELLS: Tracing: Max. Divergence 	Default value:	5 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression TRACE_WEIGHT: Tracing: Weight (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer MINLEN: Min. Segment Length 	Default value:	10 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
}
\details{
\subsection{Outputs description}{
\itemize{
\item CHNLNTWRK - outputRaster - Channel Network
\item CHNLROUTE - outputRaster - Channel Direction
\item SHAPES - outputVector - Channel Network
}
}
}
