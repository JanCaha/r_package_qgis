##' QGIS Algorithm provided by SAGA Next Gen Aggregation index (sagang:aggregationindex). ---------------- Arguments ----------------  INPUT: Input Grid 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer MAXNUMCLASS: Max. Number of Classes 	Default value:	10 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression RESULT: Result 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer
##'
##' @title QGIS algorithm - Aggregation index
##'
##' @param INPUT `raster` - Input Grid. Path to a raster layer.
##' @param MAXNUMCLASS `number` - Max. Number of Classes. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param RESULT `vectorDestination` - Result. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputVector - Result
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_aggregationindex <- function(INPUT = qgisprocess:::qgis_default_value(), MAXNUMCLASS = qgisprocess:::qgis_default_value(), RESULT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:aggregationindex")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:aggregationindex", `INPUT` = INPUT, `MAXNUMCLASS` = MAXNUMCLASS, `RESULT` = RESULT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:aggregationindex", `INPUT` = INPUT, `MAXNUMCLASS` = MAXNUMCLASS, `RESULT` = RESULT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "RESULT")
  }
}