##' QGIS Algorithm provided by QGIS (native c++) Fuzzify raster (small membership) (native:fuzzifyrastersmallmembership)
##'
##' @title QGIS algorithm Fuzzify raster (small membership)
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
##' * EXTENT - outputString - Extent
##' * CRS_AUTHID - outputString - CRS authority identifier
##' * WIDTH_IN_PIXELS - outputNumber - Width in pixels
##' * HEIGHT_IN_PIXELS - outputNumber - Height in pixels
##' * TOTAL_PIXEL_COUNT - outputNumber - Total pixel count
##' * OUTPUT - outputRaster - Fuzzified raster
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_fuzzifyrastersmallmembership <- function(INPUT = qgisprocess::qgis_default_value(), BAND = qgisprocess::qgis_default_value(), FUZZYMIDPOINT = qgisprocess::qgis_default_value(), FUZZYSPREAD = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("native:fuzzifyrastersmallmembership")

  output <- qgisprocess::qgis_run_algorithm("native:fuzzifyrastersmallmembership", `INPUT` = INPUT, `BAND` = BAND, `FUZZYMIDPOINT` = FUZZYMIDPOINT, `FUZZYSPREAD` = FUZZYSPREAD, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "EXTENT")
  }
}