##' QGIS Algorithm provided by SAGA Next Gen Gwr for single predictor layer (sagang:gwrforsinglepredictorlayer). ---------------- Arguments ----------------  POINTS: Points 	Argument type:	source 	Acceptable values: 		- Path to a vector layer DEPENDENT: Dependent Variable 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names RESIDUALS: Residuals 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer PREDICTOR: Predictor 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer REGRESSION: Regression 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer QUALITY: Coefficient of Determination 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer INTERCEPT: Intercept 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer SLOPE: Slope 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer LOGISTIC: Logistic Regression 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DW_WEIGHTING: Weighting Function 	Default value:	3 	Argument type:	enum 	Available values: 		- 0: (0) no distance weighting 		- 1: (1) inverse distance to a power 		- 2: (2) exponential 		- 3: (3) gaussian 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' DW_IDW_POWER: Power 	Default value:	2 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DW_BANDWIDTH: Bandwidth 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SEARCH_RANGE: Search Range 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) local 		- 1: (1) global 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' SEARCH_RADIUS: Maximum Search Distance 	Default value:	1000 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SEARCH_POINTS_ALL: Number of Points 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) maximum number of nearest points 		- 1: (1) all points within search distance 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' SEARCH_POINTS_MIN: Minimum 	Default value:	16 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SEARCH_POINTS_MAX: Maximum 	Default value:	20 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SEARCH_DIRECTION: Direction 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) all directions 		- 1: (1) quadrants 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Gwr for single predictor layer
##'
##' @param POINTS `source` - Points. Path to a vector layer.
##' @param DEPENDENT `field` - Dependent Variable. The name of an existing field. ; delimited list of existing field names.
##' @param RESIDUALS `vectorDestination` - Residuals. Path for new vector layer.
##' @param PREDICTOR `raster` - Predictor. Path to a raster layer.
##' @param REGRESSION `rasterDestination` - Regression. Path for new raster layer.
##' @param QUALITY `rasterDestination` - Coefficient of Determination. Path for new raster layer.
##' @param INTERCEPT `rasterDestination` - Intercept. Path for new raster layer.
##' @param SLOPE `rasterDestination` - Slope. Path for new raster layer.
##' @param LOGISTIC `boolean` - Logistic Regression. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DW_WEIGHTING `enum`  of `("(0) no distance weighting", "(1) inverse distance to a power", "(2) exponential", "(3) gaussian")` - Weighting Function. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DW_IDW_POWER `number` - Power. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DW_BANDWIDTH `number` - Bandwidth. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SEARCH_RANGE `enum`  of `("(0) local", "(1) global")` - Search Range. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SEARCH_RADIUS `number` - Maximum Search Distance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SEARCH_POINTS_ALL `enum`  of `("(0) maximum number of nearest points", "(1) all points within search distance")` - Number of Points. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SEARCH_POINTS_MIN `number` - Minimum. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SEARCH_POINTS_MAX `number` - Maximum. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SEARCH_DIRECTION `enum`  of `("(0) all directions", "(1) quadrants")` - Direction. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * INTERCEPT - outputRaster - Intercept
##' * QUALITY - outputRaster - Coefficient of Determination
##' * REGRESSION - outputRaster - Regression
##' * RESIDUALS - outputVector - Residuals
##' * SLOPE - outputRaster - Slope
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_gwrforsinglepredictorlayer <- function(POINTS = qgisprocess:::qgis_default_value(), DEPENDENT = qgisprocess:::qgis_default_value(), RESIDUALS = qgisprocess:::qgis_default_value(), PREDICTOR = qgisprocess:::qgis_default_value(), REGRESSION = qgisprocess:::qgis_default_value(), QUALITY = qgisprocess:::qgis_default_value(), INTERCEPT = qgisprocess:::qgis_default_value(), SLOPE = qgisprocess:::qgis_default_value(), LOGISTIC = qgisprocess:::qgis_default_value(), DW_WEIGHTING = qgisprocess:::qgis_default_value(), DW_IDW_POWER = qgisprocess:::qgis_default_value(), DW_BANDWIDTH = qgisprocess:::qgis_default_value(), SEARCH_RANGE = qgisprocess:::qgis_default_value(), SEARCH_RADIUS = qgisprocess:::qgis_default_value(), SEARCH_POINTS_ALL = qgisprocess:::qgis_default_value(), SEARCH_POINTS_MIN = qgisprocess:::qgis_default_value(), SEARCH_POINTS_MAX = qgisprocess:::qgis_default_value(), SEARCH_DIRECTION = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:gwrforsinglepredictorlayer")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:gwrforsinglepredictorlayer", `POINTS` = POINTS, `DEPENDENT` = DEPENDENT, `RESIDUALS` = RESIDUALS, `PREDICTOR` = PREDICTOR, `REGRESSION` = REGRESSION, `QUALITY` = QUALITY, `INTERCEPT` = INTERCEPT, `SLOPE` = SLOPE, `LOGISTIC` = LOGISTIC, `DW_WEIGHTING` = DW_WEIGHTING, `DW_IDW_POWER` = DW_IDW_POWER, `DW_BANDWIDTH` = DW_BANDWIDTH, `SEARCH_RANGE` = SEARCH_RANGE, `SEARCH_RADIUS` = SEARCH_RADIUS, `SEARCH_POINTS_ALL` = SEARCH_POINTS_ALL, `SEARCH_POINTS_MIN` = SEARCH_POINTS_MIN, `SEARCH_POINTS_MAX` = SEARCH_POINTS_MAX, `SEARCH_DIRECTION` = SEARCH_DIRECTION,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:gwrforsinglepredictorlayer", `POINTS` = POINTS, `DEPENDENT` = DEPENDENT, `RESIDUALS` = RESIDUALS, `PREDICTOR` = PREDICTOR, `REGRESSION` = REGRESSION, `QUALITY` = QUALITY, `INTERCEPT` = INTERCEPT, `SLOPE` = SLOPE, `LOGISTIC` = LOGISTIC, `DW_WEIGHTING` = DW_WEIGHTING, `DW_IDW_POWER` = DW_IDW_POWER, `DW_BANDWIDTH` = DW_BANDWIDTH, `SEARCH_RANGE` = SEARCH_RANGE, `SEARCH_RADIUS` = SEARCH_RADIUS, `SEARCH_POINTS_ALL` = SEARCH_POINTS_ALL, `SEARCH_POINTS_MIN` = SEARCH_POINTS_MIN, `SEARCH_POINTS_MAX` = SEARCH_POINTS_MAX, `SEARCH_DIRECTION` = SEARCH_DIRECTION,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "INTERCEPT")
  }
}