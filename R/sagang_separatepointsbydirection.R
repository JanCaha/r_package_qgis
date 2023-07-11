##' QGIS Algorithm provided by SAGA Next Gen Separate points by direction (sagang:separatepointsbydirection). ---------------- Arguments ----------------  OUTPUT: Ouput 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer POINTS: Points 	Argument type:	source 	Acceptable values: 		- Path to a vector layer DIRECTIONS: Number of Directions 	Default value:	4 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression TOLERANCE: Tolerance (Degree) 	Default value:	5 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Separate points by direction
##'
##' @param OUTPUT `vectorDestination` - Ouput. Path for new vector layer.
##' @param POINTS `source` - Points. Path to a vector layer.
##' @param DIRECTIONS `number` - Number of Directions. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TOLERANCE `number` - Tolerance (Degree). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Ouput
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_separatepointsbydirection <- function(OUTPUT = qgisprocess:::qgis_default_value(), POINTS = qgisprocess:::qgis_default_value(), DIRECTIONS = qgisprocess:::qgis_default_value(), TOLERANCE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:separatepointsbydirection")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:separatepointsbydirection", `OUTPUT` = OUTPUT, `POINTS` = POINTS, `DIRECTIONS` = DIRECTIONS, `TOLERANCE` = TOLERANCE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:separatepointsbydirection", `OUTPUT` = OUTPUT, `POINTS` = POINTS, `DIRECTIONS` = DIRECTIONS, `TOLERANCE` = TOLERANCE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}