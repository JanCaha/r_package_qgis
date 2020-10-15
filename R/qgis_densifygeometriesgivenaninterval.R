##' QGIS Algorithm provided by QGIS (native c++) Densify by interval (native:densifygeometriesgivenaninterval)
##'
##' @title QGIS algorithm Densify by interval
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param INTERVAL `distance` - Interval between vertices to add. A numeric value.
##' @param OUTPUT `sink` - Densified. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Densified
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_densifygeometriesgivenaninterval <- function(INPUT = qgisprocess::qgis_default_value(), INTERVAL = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("native:densifygeometriesgivenaninterval",`INPUT` = INPUT, `INTERVAL` = INTERVAL, `OUTPUT` = OUTPUT,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
}
}