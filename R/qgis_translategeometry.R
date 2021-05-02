##' QGIS Algorithm provided by QGIS (native c++) Translate (native:translategeometry)
##'
##' @title QGIS algorithm Translate
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param DELTA_X `distance` - Offset distance (x-axis). A numeric value.
##' @param DELTA_Y `distance` - Offset distance (y-axis). A numeric value.
##' @param DELTA_Z `number` - Offset distance (z-axis). A numeric value.
##' @param DELTA_M `number` - Offset distance (m values). A numeric value.
##' @param OUTPUT `sink` - Translated. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Translated
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_translategeometry <- function(INPUT = qgisprocess::qgis_default_value(), DELTA_X = qgisprocess::qgis_default_value(), DELTA_Y = qgisprocess::qgis_default_value(), DELTA_Z = qgisprocess::qgis_default_value(), DELTA_M = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("native:translategeometry")
  output <- qgisprocess::qgis_run_algorithm("native:translategeometry",`INPUT` = INPUT, `DELTA_X` = DELTA_X, `DELTA_Y` = DELTA_Y, `DELTA_Z` = DELTA_Z, `DELTA_M` = DELTA_M, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}