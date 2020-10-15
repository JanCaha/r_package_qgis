##' QGIS Algorithm provided by QGIS (native c++) Segmentize by maximum angle (native:segmentizebymaxangle)
##'
##' @title QGIS algorithm Segmentize by maximum angle
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param ANGLE `number` - Maximum angle between vertices (degrees). A numeric value.
##' @param OUTPUT `sink` - Segmentized. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Segmentized
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_segmentizebymaxangle <- function(INPUT = qgisprocess::qgis_default_value(), ANGLE = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("native:segmentizebymaxangle",`INPUT` = INPUT, `ANGLE` = ANGLE, `OUTPUT` = OUTPUT,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
}
}