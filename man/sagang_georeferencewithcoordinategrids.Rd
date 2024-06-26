% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagang_georeferencewithcoordinategrids.R
\name{sagang_georeferencewithcoordinategrids}
\alias{sagang_georeferencewithcoordinategrids}
\title{QGIS algorithm - Georeference with coordinate grids}
\usage{
sagang_georeferencewithcoordinategrids(
  GRID_X = qgisprocess:::qgis_default_value(),
  GRID_Y = qgisprocess:::qgis_default_value(),
  GRIDS = qgisprocess:::qgis_default_value(),
  OUTPUT = qgisprocess:::qgis_default_value(),
  RESAMPLING = qgisprocess:::qgis_default_value(),
  BYTEWISE = qgisprocess:::qgis_default_value(),
  KEEP_TYPE = qgisprocess:::qgis_default_value(),
  TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX =
    qgisprocess:::qgis_default_value(),
  TARGET_USER_SIZE = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{GRID_X}{\code{raster} - X Coordinates. Path to a raster layer.}

\item{GRID_Y}{\code{raster} - Y Coordinates. Path to a raster layer.}

\item{GRIDS}{\code{multilayer} - Grids. .}

\item{OUTPUT}{\code{rasterDestination} - Grids. Path for new raster layer.}

\item{RESAMPLING}{\code{enum}  of \verb{("(0) Nearest Neighbour", "(1) Bilinear Interpolation", "(2) Bicubic Spline Interpolation", "(3) B-Spline Interpolation")} - Resampling. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{BYTEWISE}{\code{boolean} - Bytewise Interpolation. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{KEEP_TYPE}{\code{boolean} - Preserve Data Type. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX}{\code{extent} - Output extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used.. Original algorithm parameter name: TARGET_USER_XMIN TARGET_USER_XMAX TARGET_USER_YMIN TARGET_USER_YMAX.}

\item{TARGET_USER_SIZE}{\code{number} - Cellsize. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by SAGA Next Gen Georeference with coordinate grids (sagang:georeferencewithcoordinategrids). ---------------- Arguments ----------------  GRID_X: X Coordinates 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer GRID_Y: Y Coordinates 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer GRIDS: Grids 	Argument type:	multilayer OUTPUT: Grids 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer RESAMPLING: Resampling 	Default value:	3 	Argument type:	enum 	Available values: 		- 0: (0) Nearest Neighbour 		- 1: (1) Bilinear Interpolation 		- 2: (2) Bicubic Spline Interpolation 		- 3: (3) B-Spline Interpolation 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' BYTEWISE: Bytewise Interpolation 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression KEEP_TYPE: Preserve Data Type 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression TARGET_USER_XMIN TARGET_USER_XMAX TARGET_USER_YMIN TARGET_USER_YMAX: Output extent (optional) 	Argument type:	extent 	Acceptable values: 		- A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105' 		- Path to a layer. The extent of the layer is used. TARGET_USER_SIZE: Cellsize 	Default value:	100 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
}
\details{
\subsection{Outputs description}{
\itemize{
\item OUTPUT - outputRaster - Grids
}
}
}
