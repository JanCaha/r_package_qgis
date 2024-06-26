% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagang_terrainsurfaceconvexity.R
\name{sagang_terrainsurfaceconvexity}
\alias{sagang_terrainsurfaceconvexity}
\title{QGIS algorithm - Terrain surface convexity}
\usage{
sagang_terrainsurfaceconvexity(
  DEM = qgisprocess:::qgis_default_value(),
  CONVEXITY = qgisprocess:::qgis_default_value(),
  KERNEL = qgisprocess:::qgis_default_value(),
  TYPE = qgisprocess:::qgis_default_value(),
  EPSILON = qgisprocess:::qgis_default_value(),
  SCALE = qgisprocess:::qgis_default_value(),
  METHOD = qgisprocess:::qgis_default_value(),
  DW_WEIGHTING = qgisprocess:::qgis_default_value(),
  DW_IDW_POWER = qgisprocess:::qgis_default_value(),
  DW_BANDWIDTH = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{DEM}{\code{raster} - Elevation. Path to a raster layer.}

\item{CONVEXITY}{\code{rasterDestination} - Convexity. Path for new raster layer.}

\item{KERNEL}{\code{enum}  of \verb{("(0) conventional four-neighbourhood", "(1) conventional eight-neihbourhood", "(2) eight-neihbourhood (distance based weighting)")} - Laplacian Filter Kernel. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{TYPE}{\code{enum}  of \verb{("(0) convexity", "(1) concavity")} - Type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{EPSILON}{\code{number} - Flat Area Threshold. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{SCALE}{\code{number} - Scale (Cells). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{METHOD}{\code{enum}  of \verb{("(0) counting cells", "(1) resampling")} - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{DW_WEIGHTING}{\code{enum}  of \verb{("(0) no distance weighting", "(1) inverse distance to a power", "(2) exponential", "(3) gaussian")} - Weighting Function. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{DW_IDW_POWER}{\code{number} - Power. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{DW_BANDWIDTH}{\code{number} - Bandwidth. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by SAGA Next Gen Terrain surface convexity (sagang:terrainsurfaceconvexity). ---------------- Arguments ----------------  DEM: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer CONVEXITY: Convexity 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer KERNEL: Laplacian Filter Kernel 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) conventional four-neighbourhood 		- 1: (1) conventional eight-neihbourhood 		- 2: (2) eight-neihbourhood (distance based weighting) 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' TYPE: Type 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) convexity 		- 1: (1) concavity 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' EPSILON: Flat Area Threshold 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SCALE: Scale (Cells) 	Default value:	10 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression METHOD: Method 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) counting cells 		- 1: (1) resampling 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' DW_WEIGHTING: Weighting Function 	Default value:	3 	Argument type:	enum 	Available values: 		- 0: (0) no distance weighting 		- 1: (1) inverse distance to a power 		- 2: (2) exponential 		- 3: (3) gaussian 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' DW_IDW_POWER: Power 	Default value:	2 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DW_BANDWIDTH: Bandwidth 	Default value:	0.7 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
}
\details{
\subsection{Outputs description}{
\itemize{
\item CONVEXITY - outputRaster - Convexity
}
}
}
