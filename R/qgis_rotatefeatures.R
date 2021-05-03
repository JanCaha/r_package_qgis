##' QGIS Algorithm provided by QGIS (native c++) Rotate (native:rotatefeatures)
##'
##' @title QGIS algorithm Rotate
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param ANGLE `number` - Rotation (degrees clockwise). A numeric value.
##' @param ANCHOR `point` - Rotation anchor point. Point coordinate as an 'x,y' string, e.g. '1.5,10.1'.
##' @param OUTPUT `sink` - Rotated. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Rotated
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_rotatefeatures <- function(INPUT = qgisprocess::qgis_default_value(), ANGLE = qgisprocess::qgis_default_value(), ANCHOR = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("native:rotatefeatures")

  output <- qgisprocess::qgis_run_algorithm("native:rotatefeatures", `INPUT` = INPUT, `ANGLE` = ANGLE, `ANCHOR` = ANCHOR, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}