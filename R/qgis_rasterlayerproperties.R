##' QGIS Algorithm provided by QGIS (native c++) Raster layer properties (native:rasterlayerproperties)
##'
##' @title QGIS algorithm Raster layer properties
##'
##' @param INPUT `raster` - Input layer. Path to a raster layer.
##' @param BAND `band` - Band number. Integer value representing an existing raster band number.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * BAND_COUNT - outputNumber - Number of bands in raster
##' * CRS_AUTHID - outputString - CRS authority identifier
##' * EXTENT - outputString - Extent
##' * HAS_NODATA_VALUE - outputBoolean - Band has a nodata value set
##' * HEIGHT_IN_PIXELS - outputNumber - Height in pixels
##' * NODATA_VALUE - outputNumber - Band nodata value
##' * PIXEL_HEIGHT - outputNumber - Pixel size (height) in map units
##' * PIXEL_WIDTH - outputNumber - Pixel size (width) in map units
##' * WIDTH_IN_PIXELS - outputNumber - Width in pixels
##' * X_MAX - outputNumber - Maximum x-coordinate
##' * X_MIN - outputNumber - Minimum x-coordinate
##' * Y_MAX - outputNumber - Maximum y-coordinate
##' * Y_MIN - outputNumber - Minimum y-coordinate
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_rasterlayerproperties <- function(INPUT = qgisprocess::qgis_default_value(), BAND = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("native:rasterlayerproperties")

  output <- qgisprocess::qgis_run_algorithm("native:rasterlayerproperties", `INPUT` = INPUT, `BAND` = BAND,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "BAND_COUNT")
  }
}