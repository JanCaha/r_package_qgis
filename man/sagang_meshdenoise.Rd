% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagang_meshdenoise.R
\name{sagang_meshdenoise}
\alias{sagang_meshdenoise}
\title{QGIS algorithm - Mesh denoise}
\usage{
sagang_meshdenoise(
  INPUT = qgisprocess:::qgis_default_value(),
  OUTPUT = qgisprocess:::qgis_default_value(),
  SIGMA = qgisprocess:::qgis_default_value(),
  ITER = qgisprocess:::qgis_default_value(),
  VITER = qgisprocess:::qgis_default_value(),
  NB_CV = qgisprocess:::qgis_default_value(),
  ZONLY = qgisprocess:::qgis_default_value(),
  ...,
  .complete_output = .complete_output_option(),
  .quiet = .quiet_option(),
  .messages = .message_option()
)
}
\arguments{
\item{INPUT}{\code{raster} - Grid. Path to a raster layer.}

\item{OUTPUT}{\code{rasterDestination} - Denoised Grid. Path for new raster layer.}

\item{SIGMA}{\code{number} - Threshold. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{ITER}{\code{number} - Number of Iterations for Normal Updating. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{VITER}{\code{number} - Number of Iterations for Vertex Updating. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{NB_CV}{\code{enum}  of \verb{("(0) Common Vertex", "(1) Common Edge")} - Common Edge Type of Face Neighbourhood. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{ZONLY}{\code{boolean} - Only Z-Direction Position is Updated. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by SAGA Next Gen Mesh denoise (sagang:meshdenoise). ---------------- Arguments ----------------  INPUT: Grid 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer OUTPUT: Denoised Grid 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer SIGMA: Threshold 	Default value:	0.9 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression ITER: Number of Iterations for Normal Updating 	Default value:	5 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression VITER: Number of Iterations for Vertex Updating 	Default value:	50 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression NB_CV: Common Edge Type of Face Neighbourhood 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) Common Vertex 		- 1: (1) Common Edge 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' ZONLY: Only Z-Direction Position is Updated 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
}
\details{
\subsection{Outputs description}{
\itemize{
\item OUTPUT - outputRaster - Denoised Grid
}
}
}
