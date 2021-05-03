##' QGIS Algorithm provided by QGIS (native c++) Affine transform (native:affinetransform)
##'
##' @title QGIS algorithm Affine transform
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param DELTA_X `distance` - Translation (x-axis). A numeric value.
##' @param DELTA_Y `distance` - Translation (y-axis). A numeric value.
##' @param DELTA_Z `number` - Translation (z-axis). A numeric value.
##' @param DELTA_M `number` - Translation (m values). A numeric value.
##' @param SCALE_X `number` - Scale factor (x-axis). A numeric value.
##' @param SCALE_Y `number` - Scale factor (y-axis). A numeric value.
##' @param SCALE_Z `number` - Scale factor (z-axis). A numeric value.
##' @param SCALE_M `number` - Scale factor (m values). A numeric value.
##' @param ROTATION_Z `number` - Rotation around z-axis (degrees counter-clockwise). A numeric value.
##' @param OUTPUT `sink` - Transformed. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Transformed
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_affinetransform <- function(INPUT = qgisprocess::qgis_default_value(), DELTA_X = qgisprocess::qgis_default_value(), DELTA_Y = qgisprocess::qgis_default_value(), DELTA_Z = qgisprocess::qgis_default_value(), DELTA_M = qgisprocess::qgis_default_value(), SCALE_X = qgisprocess::qgis_default_value(), SCALE_Y = qgisprocess::qgis_default_value(), SCALE_Z = qgisprocess::qgis_default_value(), SCALE_M = qgisprocess::qgis_default_value(), ROTATION_Z = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("native:affinetransform")

  output <- qgisprocess::qgis_run_algorithm("native:affinetransform", `INPUT` = INPUT, `DELTA_X` = DELTA_X, `DELTA_Y` = DELTA_Y, `DELTA_Z` = DELTA_Z, `DELTA_M` = DELTA_M, `SCALE_X` = SCALE_X, `SCALE_Y` = SCALE_Y, `SCALE_Z` = SCALE_Z, `SCALE_M` = SCALE_M, `ROTATION_Z` = ROTATION_Z, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}