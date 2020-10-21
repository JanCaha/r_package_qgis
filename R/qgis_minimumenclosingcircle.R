##' QGIS Algorithm provided by QGIS (native c++) Minimum enclosing circles (native:minimumenclosingcircle)
##'
##' @title QGIS algorithm Minimum enclosing circles
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param SEGMENTS `number` - Number of segments in circles. A numeric value.
##' @param OUTPUT `sink` - Minimum enclosing circles. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Minimum enclosing circles
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_minimumenclosingcircle <- function(INPUT = qgisprocess::qgis_default_value(), SEGMENTS = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("native:minimumenclosingcircle",`INPUT` = INPUT, `SEGMENTS` = SEGMENTS, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}