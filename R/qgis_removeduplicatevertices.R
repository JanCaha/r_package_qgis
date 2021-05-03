##' QGIS Algorithm provided by QGIS (native c++) Remove duplicate vertices (native:removeduplicatevertices)
##'
##' @title QGIS algorithm Remove duplicate vertices
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param TOLERANCE `distance` - Tolerance. A numeric value.
##' @param USE_Z_VALUE `boolean` - Use Z Value. 1 for true/yes. 0 for false/no.
##' @param OUTPUT `sink` - Cleaned. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Cleaned
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_removeduplicatevertices <- function(INPUT = qgisprocess::qgis_default_value(), TOLERANCE = qgisprocess::qgis_default_value(), USE_Z_VALUE = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("native:removeduplicatevertices")

  output <- qgisprocess::qgis_run_algorithm("native:removeduplicatevertices", `INPUT` = INPUT, `TOLERANCE` = TOLERANCE, `USE_Z_VALUE` = USE_Z_VALUE, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}