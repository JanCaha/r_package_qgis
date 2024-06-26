% Generated by roxygen2: do not edit by hand
% Please edit documentation in
%   R/sagang_terrainsurfaceclassificationiwahashiandpike.R
\name{sagang_terrainsurfaceclassificationiwahashiandpike}
\alias{sagang_terrainsurfaceclassificationiwahashiandpike}
\title{QGIS algorithm - Terrain surface classification (iwahashi and pike)}
\usage{
sagang_terrainsurfaceclassificationiwahashiandpike(
  DEM = qgisprocess:::qgis_default_value(),
  SLOPE = qgisprocess:::qgis_default_value(),
  CONVEXITY = qgisprocess:::qgis_default_value(),
  CONV_RECALC = qgisprocess:::qgis_default_value(),
  TEXTURE = qgisprocess:::qgis_default_value(),
  TEXT_RECALC = qgisprocess:::qgis_default_value(),
  LANDFORMS = qgisprocess:::qgis_default_value(),
  TYPE = qgisprocess:::qgis_default_value(),
  CONV_SCALE = qgisprocess:::qgis_default_value(),
  CONV_KERNEL = qgisprocess:::qgis_default_value(),
  CONV_TYPE = qgisprocess:::qgis_default_value(),
  CONV_EPSILON = qgisprocess:::qgis_default_value(),
  TEXT_SCALE = qgisprocess:::qgis_default_value(),
  TEXT_EPSILON = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{DEM}{\code{raster} - Elevation. Path to a raster layer.}

\item{SLOPE}{\code{raster} - Slope. Path to a raster layer.}

\item{CONVEXITY}{\code{raster} - Convexity. Path to a raster layer.}

\item{CONV_RECALC}{\code{boolean} - Recalculate. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{TEXTURE}{\code{raster} - Texture. Path to a raster layer.}

\item{TEXT_RECALC}{\code{boolean} - Recalculate. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{LANDFORMS}{\code{rasterDestination} - Landforms. Path for new raster layer.}

\item{TYPE}{\code{enum}  of \verb{("(0) 8", "(1) 12", "(2) 16")} - Number of Classes. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{CONV_SCALE}{\code{number} - Scale (Cells). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{CONV_KERNEL}{\code{enum}  of \verb{("(0) four-neighbourhood", "(1) eight-neihbourhood", "(2) eight-neihbourhood (distance based weighting)")} - Laplacian Filter Kernel. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{CONV_TYPE}{\code{enum}  of \verb{("(0) convexity", "(1) concavity")} - Type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{CONV_EPSILON}{\code{number} - Flat Area Threshold. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{TEXT_SCALE}{\code{number} - Scale (Cells). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{TEXT_EPSILON}{\code{number} - Flat Area Threshold. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by SAGA Next Gen Terrain surface classification (iwahashi and pike) (sagang:terrainsurfaceclassificationiwahashiandpike). ---------------- Arguments ----------------  DEM: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer SLOPE: Slope (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer CONVEXITY: Convexity (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer CONV_RECALC: Recalculate 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression TEXTURE: Texture (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer TEXT_RECALC: Recalculate 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression LANDFORMS: Landforms 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer TYPE: Number of Classes 	Default value:	2 	Argument type:	enum 	Available values: 		- 0: (0) 8 		- 1: (1) 12 		- 2: (2) 16 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' CONV_SCALE: Scale (Cells) 	Default value:	10 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression CONV_KERNEL: Laplacian Filter Kernel 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) four-neighbourhood 		- 1: (1) eight-neihbourhood 		- 2: (2) eight-neihbourhood (distance based weighting) 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' CONV_TYPE: Type 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) convexity 		- 1: (1) concavity 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' CONV_EPSILON: Flat Area Threshold 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression TEXT_SCALE: Scale (Cells) 	Default value:	10 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression TEXT_EPSILON: Flat Area Threshold 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
}
\details{
\subsection{Outputs description}{
\itemize{
\item LANDFORMS - outputRaster - Landforms
}
}
}
