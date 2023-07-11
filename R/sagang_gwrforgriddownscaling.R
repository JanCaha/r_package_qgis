##' QGIS Algorithm provided by SAGA Next Gen Gwr for grid downscaling (sagang:gwrforgriddownscaling). ---------------- Arguments ----------------  PREDICTORS: Predictors 	Argument type:	multilayer REGRESSION: Regression 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer REG_RESCORR: Regression with Residual Correction 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer DEPENDENT: Dependent Variable 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer QUALITY: Coefficient of Determination 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer RESIDUALS: Residuals 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer MODEL: Regression Parameters 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer LOGISTIC: Logistic Regression 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression MODEL_OUT: Output of Model Parameters 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SEARCH_RANGE: Search Range 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) local 		- 1: (1) global 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' SEARCH_RADIUS: Search Distance (Cells) 	Default value:	10 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DW_WEIGHTING: Weighting Function 	Default value:	3 	Argument type:	enum 	Available values: 		- 0: (0) no distance weighting 		- 1: (1) inverse distance to a power 		- 2: (2) exponential 		- 3: (3) gaussian 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' DW_IDW_POWER: Power 	Default value:	2 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DW_BANDWIDTH: Bandwidth 	Default value:	7 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Gwr for grid downscaling
##'
##' @param PREDICTORS `multilayer` - Predictors. .
##' @param REGRESSION `rasterDestination` - Regression. Path for new raster layer.
##' @param REG_RESCORR `rasterDestination` - Regression with Residual Correction. Path for new raster layer.
##' @param DEPENDENT `raster` - Dependent Variable. Path to a raster layer.
##' @param QUALITY `rasterDestination` - Coefficient of Determination. Path for new raster layer.
##' @param RESIDUALS `rasterDestination` - Residuals. Path for new raster layer.
##' @param MODEL `rasterDestination` - Regression Parameters. Path for new raster layer.
##' @param LOGISTIC `boolean` - Logistic Regression. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param MODEL_OUT `boolean` - Output of Model Parameters. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SEARCH_RANGE `enum`  of `("(0) local", "(1) global")` - Search Range. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SEARCH_RADIUS `number` - Search Distance (Cells). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DW_WEIGHTING `enum`  of `("(0) no distance weighting", "(1) inverse distance to a power", "(2) exponential", "(3) gaussian")` - Weighting Function. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DW_IDW_POWER `number` - Power. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DW_BANDWIDTH `number` - Bandwidth. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * MODEL - outputRaster - Regression Parameters
##' * QUALITY - outputRaster - Coefficient of Determination
##' * REGRESSION - outputRaster - Regression
##' * REG_RESCORR - outputRaster - Regression with Residual Correction
##' * RESIDUALS - outputRaster - Residuals
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_gwrforgriddownscaling <- function(PREDICTORS = qgisprocess:::qgis_default_value(), REGRESSION = qgisprocess:::qgis_default_value(), REG_RESCORR = qgisprocess:::qgis_default_value(), DEPENDENT = qgisprocess:::qgis_default_value(), QUALITY = qgisprocess:::qgis_default_value(), RESIDUALS = qgisprocess:::qgis_default_value(), MODEL = qgisprocess:::qgis_default_value(), LOGISTIC = qgisprocess:::qgis_default_value(), MODEL_OUT = qgisprocess:::qgis_default_value(), SEARCH_RANGE = qgisprocess:::qgis_default_value(), SEARCH_RADIUS = qgisprocess:::qgis_default_value(), DW_WEIGHTING = qgisprocess:::qgis_default_value(), DW_IDW_POWER = qgisprocess:::qgis_default_value(), DW_BANDWIDTH = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:gwrforgriddownscaling")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:gwrforgriddownscaling", `PREDICTORS` = PREDICTORS, `REGRESSION` = REGRESSION, `REG_RESCORR` = REG_RESCORR, `DEPENDENT` = DEPENDENT, `QUALITY` = QUALITY, `RESIDUALS` = RESIDUALS, `MODEL` = MODEL, `LOGISTIC` = LOGISTIC, `MODEL_OUT` = MODEL_OUT, `SEARCH_RANGE` = SEARCH_RANGE, `SEARCH_RADIUS` = SEARCH_RADIUS, `DW_WEIGHTING` = DW_WEIGHTING, `DW_IDW_POWER` = DW_IDW_POWER, `DW_BANDWIDTH` = DW_BANDWIDTH,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:gwrforgriddownscaling", `PREDICTORS` = PREDICTORS, `REGRESSION` = REGRESSION, `REG_RESCORR` = REG_RESCORR, `DEPENDENT` = DEPENDENT, `QUALITY` = QUALITY, `RESIDUALS` = RESIDUALS, `MODEL` = MODEL, `LOGISTIC` = LOGISTIC, `MODEL_OUT` = MODEL_OUT, `SEARCH_RANGE` = SEARCH_RANGE, `SEARCH_RADIUS` = SEARCH_RADIUS, `DW_WEIGHTING` = DW_WEIGHTING, `DW_IDW_POWER` = DW_IDW_POWER, `DW_BANDWIDTH` = DW_BANDWIDTH,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "MODEL")
  }
}