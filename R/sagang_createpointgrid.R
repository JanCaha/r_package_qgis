##' QGIS Algorithm provided by SAGA Next Gen Create point grid (sagang:createpointgrid). ---------------- Arguments ----------------  POINTS: Points 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer DIST: Distance 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Create point grid
##'
##' @param POINTS `vectorDestination` - Points. Path for new vector layer.
##' @param DIST `number` - Distance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * POINTS - outputVector - Points
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_createpointgrid <- function(POINTS = qgisprocess:::qgis_default_value(), DIST = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:createpointgrid")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:createpointgrid", `POINTS` = POINTS, `DIST` = DIST,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:createpointgrid", `POINTS` = POINTS, `DIST` = DIST,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "POINTS")
  }
}