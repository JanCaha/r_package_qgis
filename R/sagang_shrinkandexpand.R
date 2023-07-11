##' QGIS Algorithm provided by SAGA Next Gen Shrink and expand (sagang:shrinkandexpand). ---------------- Arguments ----------------  INPUT: Grid 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer RESULT: Result Grid 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer OPERATION: Operation 	Default value:	3 	Argument type:	enum 	Available values: 		- 0: (0) shrink 		- 1: (1) expand 		- 2: (2) shrink and expand 		- 3: (3) expand and shrink 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' CIRCLE: Search Mode 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) Square 		- 1: (1) Circle 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' RADIUS: Radius 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression EXPAND: Method 	Default value:	3 	Argument type:	enum 	Available values: 		- 0: (0) minimum 		- 1: (1) maximum 		- 2: (2) mean 		- 3: (3) majority 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Shrink and expand
##'
##' @param INPUT `raster` - Grid. Path to a raster layer.
##' @param RESULT `rasterDestination` - Result Grid. Path for new raster layer.
##' @param OPERATION `enum`  of `("(0) shrink", "(1) expand", "(2) shrink and expand", "(3) expand and shrink")` - Operation. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param CIRCLE `enum`  of `("(0) Square", "(1) Circle")` - Search Mode. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param RADIUS `number` - Radius. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param EXPAND `enum`  of `("(0) minimum", "(1) maximum", "(2) mean", "(3) majority")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputRaster - Result Grid
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_shrinkandexpand <- function(INPUT = qgisprocess:::qgis_default_value(), RESULT = qgisprocess:::qgis_default_value(), OPERATION = qgisprocess:::qgis_default_value(), CIRCLE = qgisprocess:::qgis_default_value(), RADIUS = qgisprocess:::qgis_default_value(), EXPAND = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:shrinkandexpand")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:shrinkandexpand", `INPUT` = INPUT, `RESULT` = RESULT, `OPERATION` = OPERATION, `CIRCLE` = CIRCLE, `RADIUS` = RADIUS, `EXPAND` = EXPAND,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:shrinkandexpand", `INPUT` = INPUT, `RESULT` = RESULT, `OPERATION` = OPERATION, `CIRCLE` = CIRCLE, `RADIUS` = RADIUS, `EXPAND` = EXPAND,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "RESULT")
  }
}