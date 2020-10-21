##' QGIS Algorithm provided by QGIS (native c++) Hillshade (native:hillshade)
##'
##' @title QGIS algorithm Hillshade
##'
##' @param INPUT `raster` - Elevation layer. Path to a raster layer.
##' @param Z_FACTOR `number` - Z factor. A numeric value.
##' @param AZIMUTH `number` - Azimuth (horizontal angle). A numeric value.
##' @param V_ANGLE `number` - Vertical angle. A numeric value.
##' @param OUTPUT `rasterDestination` - Hillshade. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Hillshade
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_hillshade <- function(INPUT = qgisprocess::qgis_default_value(), Z_FACTOR = qgisprocess::qgis_default_value(), AZIMUTH = qgisprocess::qgis_default_value(), V_ANGLE = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("native:hillshade",`INPUT` = INPUT, `Z_FACTOR` = Z_FACTOR, `AZIMUTH` = AZIMUTH, `V_ANGLE` = V_ANGLE, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}