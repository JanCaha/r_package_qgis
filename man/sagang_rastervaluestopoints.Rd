% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagang_rastervaluestopoints.R
\name{sagang_rastervaluestopoints}
\alias{sagang_rastervaluestopoints}
\title{QGIS algorithm - Raster values to points}
\usage{
sagang_rastervaluestopoints(
  GRIDS = qgisprocess:::qgis_default_value(),
  POLYGONS = qgisprocess:::qgis_default_value(),
  SHAPES = qgisprocess:::qgis_default_value(),
  NODATA = qgisprocess:::qgis_default_value(),
  TYPE = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{GRIDS}{\code{multilayer} - Grids. .}

\item{POLYGONS}{\code{source} - Polygons. Path to a vector layer.}

\item{SHAPES}{\code{vectorDestination} - Shapes. Path for new vector layer.}

\item{NODATA}{\code{boolean} - Exclude NoData Cells. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{TYPE}{\code{enum}  of \verb{("(0) nodes", "(1) cells")} - Type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by SAGA Next Gen Raster values to points (sagang:rastervaluestopoints). ---------------- Arguments ----------------  GRIDS: Grids 	Argument type:	multilayer POLYGONS: Polygons (optional) 	Argument type:	source 	Acceptable values: 		- Path to a vector layer SHAPES: Shapes 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer NODATA: Exclude NoData Cells 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression TYPE: Type 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) nodes 		- 1: (1) cells 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
}
\details{
\subsection{Outputs description}{
\itemize{
\item SHAPES - outputVector - Shapes
}
}
}
