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
##' * X_MIN - outputNumber - Minimum x
##' * X_MAX - outputNumber - Maximum x
##' * Y_MIN - outputNumber - Minimum y
##' * Y_MAX - outputNumber - Maximum y
##' * EXTENT - outputString - Extent
##' * PIXEL_WIDTH - outputNumber - Pixel size 
##' * PIXEL_HEIGHT - outputNumber - Pixel size 
##' * CRS_AUTHID - outputString - CRS authority identifier
##' * WIDTH_IN_PIXELS - outputNumber - Width in pixels
##' * HEIGHT_IN_PIXELS - outputNumber - Height in pixels
##' * HAS_NODATA_VALUE - outputBoolean - Band has a nodata value set
##' * NODATA_VALUE - outputNumber - Band nodata value
##' * BAND_COUNT - outputNumber - Number of bands in raster
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
    qgisprocess::qgis_output(output, "X_MIN")
  }
}