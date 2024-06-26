##' QGIS Algorithm provided by SAGA Next Gen Raster buffer (sagang:rasterbuffer). ---------------- Arguments ----------------  FEATURES: Features 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer BUFFER: Buffer 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer TYPE: Type 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) fixed 		- 1: (1) cell's value 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' DISTANCE: Distance 	Default value:	1000 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Raster buffer
##'
##' @param FEATURES `raster` - Features. Path to a raster layer.
##' @param BUFFER `rasterDestination` - Buffer. Path for new raster layer.
##' @param TYPE `enum`  of `("(0) fixed", "(1) cell's value")` - Type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DISTANCE `number` - Distance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * BUFFER - outputRaster - Buffer
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_rasterbuffer <- function(FEATURES = qgisprocess:::qgis_default_value(), BUFFER = qgisprocess:::qgis_default_value(), TYPE = qgisprocess:::qgis_default_value(), DISTANCE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:rasterbuffer")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:rasterbuffer", `FEATURES` = FEATURES, `BUFFER` = BUFFER, `TYPE` = TYPE, `DISTANCE` = DISTANCE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:rasterbuffer", `FEATURES` = FEATURES, `BUFFER` = BUFFER, `TYPE` = TYPE, `DISTANCE` = DISTANCE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "BUFFER")
  }
}