% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagang_gwrforgriddownscaling.R
\name{sagang_gwrforgriddownscaling}
\alias{sagang_gwrforgriddownscaling}
\title{QGIS algorithm - Gwr for grid downscaling}
\usage{
sagang_gwrforgriddownscaling(
  PREDICTORS = qgisprocess:::qgis_default_value(),
  REGRESSION = qgisprocess:::qgis_default_value(),
  REG_RESCORR = qgisprocess:::qgis_default_value(),
  DEPENDENT = qgisprocess:::qgis_default_value(),
  QUALITY = qgisprocess:::qgis_default_value(),
  RESIDUALS = qgisprocess:::qgis_default_value(),
  MODEL = qgisprocess:::qgis_default_value(),
  LOGISTIC = qgisprocess:::qgis_default_value(),
  MODEL_OUT = qgisprocess:::qgis_default_value(),
  SEARCH_RANGE = qgisprocess:::qgis_default_value(),
  SEARCH_RADIUS = qgisprocess:::qgis_default_value(),
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
\item{PREDICTORS}{\code{multilayer} - Predictors. .}

\item{REGRESSION}{\code{rasterDestination} - Regression. Path for new raster layer.}

\item{REG_RESCORR}{\code{rasterDestination} - Regression with Residual Correction. Path for new raster layer.}

\item{DEPENDENT}{\code{raster} - Dependent Variable. Path to a raster layer.}

\item{QUALITY}{\code{rasterDestination} - Coefficient of Determination. Path for new raster layer.}

\item{RESIDUALS}{\code{rasterDestination} - Residuals. Path for new raster layer.}

\item{MODEL}{\code{rasterDestination} - Regression Parameters. Path for new raster layer.}

\item{LOGISTIC}{\code{boolean} - Logistic Regression. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{MODEL_OUT}{\code{boolean} - Output of Model Parameters. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{SEARCH_RANGE}{\code{enum}  of \verb{("(0) local", "(1) global")} - Search Range. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{SEARCH_RADIUS}{\code{number} - Search Distance (Cells). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{DW_WEIGHTING}{\code{enum}  of \verb{("(0) no distance weighting", "(1) inverse distance to a power", "(2) exponential", "(3) gaussian")} - Weighting Function. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.}

\item{DW_IDW_POWER}{\code{number} - Power. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{DW_BANDWIDTH}{\code{number} - Bandwidth. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.}

\item{...}{further parameters passed to \code{qgisprocess::qgis_run_algorithm()}}

\item{.complete_output}{logical specifying if complete out of \code{qgisprocess::qgis_run_algorithm()} should be used (\code{TRUE}) or first output (most likely the main) should read (\code{FALSE}). Default value is \code{TRUE}.}

\item{.quiet}{logical specifying if parameter \code{.quiet} for \code{qgisprocess::qgis_run_algorithm()} Default value is \code{TRUE}.}

\item{.messages}{logical specifying if messages from \code{qgisprocess::qgis_run_algorithm()} should be printed (\code{TRUE}) or not (\code{FALSE}). Default value is \code{FALSE}.}
}
\description{
QGIS Algorithm provided by SAGA Next Gen Gwr for grid downscaling (sagang:gwrforgriddownscaling). ---------------- Arguments ----------------  PREDICTORS: Predictors 	Argument type:	multilayer REGRESSION: Regression 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer REG_RESCORR: Regression with Residual Correction 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer DEPENDENT: Dependent Variable 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer QUALITY: Coefficient of Determination 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer RESIDUALS: Residuals 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer MODEL: Regression Parameters 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer LOGISTIC: Logistic Regression 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression MODEL_OUT: Output of Model Parameters 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SEARCH_RANGE: Search Range 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) local 		- 1: (1) global 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' SEARCH_RADIUS: Search Distance (Cells) 	Default value:	10 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DW_WEIGHTING: Weighting Function 	Default value:	3 	Argument type:	enum 	Available values: 		- 0: (0) no distance weighting 		- 1: (1) inverse distance to a power 		- 2: (2) exponential 		- 3: (3) gaussian 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' DW_IDW_POWER: Power 	Default value:	2 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DW_BANDWIDTH: Bandwidth 	Default value:	7 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
}
\details{
\subsection{Outputs description}{
\itemize{
\item MODEL - outputRaster - Regression Parameters
\item QUALITY - outputRaster - Coefficient of Determination
\item REGRESSION - outputRaster - Regression
\item REG_RESCORR - outputRaster - Regression with Residual Correction
\item RESIDUALS - outputRaster - Residuals
}
}
}
