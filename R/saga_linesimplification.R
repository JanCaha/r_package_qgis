##' QGIS Algorithm provided by SAGA Line simplification (saga:linesimplification)
##'
##' @title QGIS algorithm Line simplification
##'
##' @param LINES `source` - Lines. Path to a vector layer.
##' @param TOLERANCE `number` - Tolerance. A numeric value.
##' @param OUTPUT `vectorDestination` - Simplified Lines. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Simplified Lines
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_linesimplification <- function(LINES = qgisprocess::qgis_default_value(), TOLERANCE = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:linesimplification",`LINES` = LINES, `TOLERANCE` = TOLERANCE, `OUTPUT` = OUTPUT,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
}
}