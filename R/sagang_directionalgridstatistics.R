##' QGIS Algorithm provided by SAGA Next Gen Directional grid statistics (sagang:directionalgridstatistics). ---------------- Arguments ----------------  GRID: Grid 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer MEAN: Arithmetic Mean 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer BEGIN: Start Direction 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression END: Stop Direction 	Default value:	359 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression STEP: Directional Step 	Default value:	45 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression TOLERANCE: Tolerance 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression MAXDISTANCE: Maximum Distance 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DW_WEIGHTING: Weighting 	Default value:	3 	Argument type:	enum 	Available values: 		- 0: (0) no distance weighting 		- 1: (1) inverse distance to a power 		- 2: (2) exponential 		- 3: (3) gaussian weighting 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' DW_IDW_POWER: Inverse Distance Weighting Power 	Default value:	2 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DW_IDW_OFFSET: Inverse Distance Offset 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DW_BANDWIDTH: Gaussian and Exponential Weighting Bandwidth 	Default value:	25 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Directional grid statistics
##'
##' @param GRID `raster` - Grid. Path to a raster layer.
##' @param MEAN `rasterDestination` - Arithmetic Mean. Path for new raster layer.
##' @param BEGIN `number` - Start Direction. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param END `number` - Stop Direction. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param STEP `number` - Directional Step. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TOLERANCE `number` - Tolerance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param MAXDISTANCE `number` - Maximum Distance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DW_WEIGHTING `enum`  of `("(0) no distance weighting", "(1) inverse distance to a power", "(2) exponential", "(3) gaussian weighting")` - Weighting. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DW_IDW_POWER `number` - Inverse Distance Weighting Power. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DW_IDW_OFFSET `number` - Inverse Distance Offset. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DW_BANDWIDTH `number` - Gaussian and Exponential Weighting Bandwidth. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * MEAN - outputRaster - Arithmetic Mean
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_directionalgridstatistics <- function(GRID = qgisprocess:::qgis_default_value(), MEAN = qgisprocess:::qgis_default_value(), BEGIN = qgisprocess:::qgis_default_value(), END = qgisprocess:::qgis_default_value(), STEP = qgisprocess:::qgis_default_value(), TOLERANCE = qgisprocess:::qgis_default_value(), MAXDISTANCE = qgisprocess:::qgis_default_value(), DW_WEIGHTING = qgisprocess:::qgis_default_value(), DW_IDW_POWER = qgisprocess:::qgis_default_value(), DW_IDW_OFFSET = qgisprocess:::qgis_default_value(), DW_BANDWIDTH = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:directionalgridstatistics")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:directionalgridstatistics", `GRID` = GRID, `MEAN` = MEAN, `BEGIN` = BEGIN, `END` = END, `STEP` = STEP, `TOLERANCE` = TOLERANCE, `MAXDISTANCE` = MAXDISTANCE, `DW_WEIGHTING` = DW_WEIGHTING, `DW_IDW_POWER` = DW_IDW_POWER, `DW_IDW_OFFSET` = DW_IDW_OFFSET, `DW_BANDWIDTH` = DW_BANDWIDTH,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:directionalgridstatistics", `GRID` = GRID, `MEAN` = MEAN, `BEGIN` = BEGIN, `END` = END, `STEP` = STEP, `TOLERANCE` = TOLERANCE, `MAXDISTANCE` = MAXDISTANCE, `DW_WEIGHTING` = DW_WEIGHTING, `DW_IDW_POWER` = DW_IDW_POWER, `DW_IDW_OFFSET` = DW_IDW_OFFSET, `DW_BANDWIDTH` = DW_BANDWIDTH,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "MEAN")
  }
}