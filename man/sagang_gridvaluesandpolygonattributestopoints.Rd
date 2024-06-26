% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagang_gridvaluesandpolygonattributestopoints.R
\name{sagang_gridvaluesandpolygonattributestopoints}
\alias{sagang_gridvaluesandpolygonattributestopoints}
\title{QGIS algorithm - Grid values and polygon attributes to points}
\usage{
sagang_gridvaluesandpolygonattributestopoints(
  GRID = qgisprocess:::qgis_default_value(),
  POLYGONS = qgisprocess:::qgis_default_value(),
  ATTRIBUTE = qgisprocess:::qgis_default_value(),
  POINTS = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{GRID}{\code{raster} - Grid. Path to a raster layer.}

\item{POLYGONS}{\code{source} - Polygons. Path to a vector layer.}

\item{ATTRIBUTE}{\code{field} - Attribute. The name of an existing field. ; delimited list of existing field names.}

\item{POINTS}{\code{vectorDestination} - Points Table. Path for new vector layer.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by SAGA Next Gen Grid values and polygon attributes to points (sagang:gridvaluesandpolygonattributestopoints). ---------------- Arguments ----------------  GRID: Grid 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer POLYGONS: Polygons 	Argument type:	source 	Acceptable values: 		- Path to a vector layer ATTRIBUTE: Attribute 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names POINTS: Points Table 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer
}
\details{
\subsection{Outputs description}{
\itemize{
\item POINTS - outputVector - Points Table
}
}
}
