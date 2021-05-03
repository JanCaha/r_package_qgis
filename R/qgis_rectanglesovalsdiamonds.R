##' QGIS Algorithm provided by QGIS (native c++) Rectangles, ovals, diamonds (native:rectanglesovalsdiamonds)
##'
##' @title QGIS algorithm Rectangles, ovals, diamonds
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param SHAPE `enum`  of `("Rectangle", "Diamond", "Oval")` - Shape. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param WIDTH `distance` - Width. A numeric value.
##' @param HEIGHT `distance` - Height. A numeric value.
##' @param ROTATION `number` - Rotation. A numeric value.
##' @param SEGMENTS `number` - Segments. A numeric value.
##' @param OUTPUT `sink` - Polygon. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Polygon
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_rectanglesovalsdiamonds <- function(INPUT = qgisprocess::qgis_default_value(), SHAPE = qgisprocess::qgis_default_value(), WIDTH = qgisprocess::qgis_default_value(), HEIGHT = qgisprocess::qgis_default_value(), ROTATION = qgisprocess::qgis_default_value(), SEGMENTS = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("native:rectanglesovalsdiamonds")
  output <- qgisprocess::qgis_run_algorithm("native:rectanglesovalsdiamonds",`INPUT` = INPUT, `SHAPE` = SHAPE, `WIDTH` = WIDTH, `HEIGHT` = HEIGHT, `ROTATION` = ROTATION, `SEGMENTS` = SEGMENTS, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}