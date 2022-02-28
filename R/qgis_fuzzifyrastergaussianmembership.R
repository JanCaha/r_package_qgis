##' QGIS Algorithm provided by QGIS (native c++) Fuzzify raster (gaussian membership) (native:fuzzifyrastergaussianmembership)
##'
##' @title QGIS algorithm Fuzzify raster (gaussian membership)
##'
##' @param INPUT `raster` - Input Raster. Path to a raster layer.
##' @param BAND `band` - Band Number. Integer value representing an existing raster band number.
##' @param FUZZYMIDPOINT `number` - Function midpoint. A numeric value.
##' @param FUZZYSPREAD `number` - Function spread. A numeric value.
##' @param OUTPUT `rasterDestination` - Fuzzified raster. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * CRS_AUTHID - outputString - CRS authority identifier
##' * EXTENT - outputString - Extent
##' * HEIGHT_IN_PIXELS - outputNumber - Height in pixels
##' * OUTPUT - outputRaster - Fuzzified raster
##' * TOTAL_PIXEL_COUNT - outputNumber - Total pixel count
##' * WIDTH_IN_PIXELS - outputNumber - Width in pixels
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_fuzzifyrastergaussianmembership <- function(INPUT = qgisprocess::qgis_default_value(), BAND = qgisprocess::qgis_default_value(), FUZZYMIDPOINT = qgisprocess::qgis_default_value(), FUZZYSPREAD = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("native:fuzzifyrastergaussianmembership")

  output <- qgisprocess::qgis_run_algorithm("native:fuzzifyrastergaussianmembership", `INPUT` = INPUT, `BAND` = BAND, `FUZZYMIDPOINT` = FUZZYMIDPOINT, `FUZZYSPREAD` = FUZZYSPREAD, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "CRS_AUTHID")
  }
}