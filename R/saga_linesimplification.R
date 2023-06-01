##' QGIS Algorithm provided by SAGA Line simplification (saga:linesimplification)
##'
##' @title QGIS algorithm Line simplification
##'
##' @param LINES `source` - Lines. Path to a vector layer.
##' @param TOLERANCE `number` - Tolerance. A numeric value.
##' @param OUTPUT `vectorDestination` - Simplified Lines. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Simplified Lines
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

saga_linesimplification <- function(LINES = qgisprocess:::qgis_default_value(), TOLERANCE = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:linesimplification")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:linesimplification", `LINES` = LINES, `TOLERANCE` = TOLERANCE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:linesimplification", `LINES` = LINES, `TOLERANCE` = TOLERANCE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}