##' QGIS Algorithm provided by QGIS (native c++) Snap points to grid (native:snappointstogrid)
##'
##' @title QGIS algorithm Snap points to grid
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param HSPACING `distance` - X Grid Spacing. A numeric value.
##' @param VSPACING `distance` - Y Grid Spacing. A numeric value.
##' @param ZSPACING `number` - Z Grid Spacing. A numeric value.
##' @param MSPACING `number` - M Grid Spacing. A numeric value.
##' @param OUTPUT `sink` - Snapped. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Snapped
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_snappointstogrid <- function(INPUT = qgisprocess::qgis_default_value(), HSPACING = qgisprocess::qgis_default_value(), VSPACING = qgisprocess::qgis_default_value(), ZSPACING = qgisprocess::qgis_default_value(), MSPACING = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("native:snappointstogrid")
  output <- qgisprocess::qgis_run_algorithm("native:snappointstogrid",`INPUT` = INPUT, `HSPACING` = HSPACING, `VSPACING` = VSPACING, `ZSPACING` = ZSPACING, `MSPACING` = MSPACING, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}