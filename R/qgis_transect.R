##' QGIS Algorithm provided by QGIS (native c++) Transect (native:transect)
##'
##' @title QGIS algorithm Transect
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param LENGTH `distance` - Length of the transect. A numeric value.
##' @param ANGLE `number` - Angle in degrees from the original line at the vertices. A numeric value.
##' @param SIDE `enum`  of `("Left", "Right", "Both")` - Side to create the transects. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param OUTPUT `sink` - Transect. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Transect
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_transect <- function(INPUT = qgisprocess::qgis_default_value(), LENGTH = qgisprocess::qgis_default_value(), ANGLE = qgisprocess::qgis_default_value(), SIDE = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("native:transect")
  output <- qgisprocess::qgis_run_algorithm("native:transect",`INPUT` = INPUT, `LENGTH` = LENGTH, `ANGLE` = ANGLE, `SIDE` = SIDE, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}