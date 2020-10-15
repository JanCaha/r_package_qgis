##' QGIS Algorithm provided by QGIS (native c++) Pole of inaccessibility (native:poleofinaccessibility)
##'
##' @title QGIS algorithm Pole of inaccessibility
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param TOLERANCE `distance` - Tolerance. A numeric value.
##' @param OUTPUT `sink` - Point. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Point
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_poleofinaccessibility <- function(INPUT = qgisprocess::qgis_default_value(), TOLERANCE = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("native:poleofinaccessibility",`INPUT` = INPUT, `TOLERANCE` = TOLERANCE, `OUTPUT` = OUTPUT,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
}
}