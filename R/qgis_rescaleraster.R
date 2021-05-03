##' QGIS Algorithm provided by QGIS (native c++) Rescale raster (native:rescaleraster)
##'
##' @title QGIS algorithm Rescale raster
##'
##' @param INPUT `raster` - Input raster. Path to a raster layer.
##' @param BAND `band` - Band number. Integer value representing an existing raster band number.
##' @param MINIMUM `number` - New minimum value. A numeric value.
##' @param MAXIMUM `number` - New maximum value. A numeric value.
##' @param NODATA `number` - New NODATA value. A numeric value.
##' @param OUTPUT `rasterDestination` - Rescaled. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Rescaled
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_rescaleraster <- function(INPUT = qgisprocess::qgis_default_value(), BAND = qgisprocess::qgis_default_value(), MINIMUM = qgisprocess::qgis_default_value(), MAXIMUM = qgisprocess::qgis_default_value(), NODATA = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("native:rescaleraster")
  output <- qgisprocess::qgis_run_algorithm("native:rescaleraster",`INPUT` = INPUT, `BAND` = BAND, `MINIMUM` = MINIMUM, `MAXIMUM` = MAXIMUM, `NODATA` = NODATA, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}