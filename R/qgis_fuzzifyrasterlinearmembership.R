##' QGIS Algorithm provided by QGIS (native c++) Fuzzify raster (linear membership) (native:fuzzifyrasterlinearmembership)
##'
##' @title QGIS algorithm Fuzzify raster (linear membership)
##'
##' @param INPUT `raster` - Input Raster. Path to a raster layer.
##' @param BAND `band` - Band Number. Integer value representing an existing raster band number.
##' @param FUZZYLOWBOUND `number` - Low fuzzy membership bound. A numeric value.
##' @param FUZZYHIGHBOUND `number` - High fuzzy membership bound. A numeric value.
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

qgis_fuzzifyrasterlinearmembership <- function(INPUT = qgisprocess::qgis_default_value(), BAND = qgisprocess::qgis_default_value(), FUZZYLOWBOUND = qgisprocess::qgis_default_value(), FUZZYHIGHBOUND = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("native:fuzzifyrasterlinearmembership")

  output <- qgisprocess::qgis_run_algorithm("native:fuzzifyrasterlinearmembership", `INPUT` = INPUT, `BAND` = BAND, `FUZZYLOWBOUND` = FUZZYLOWBOUND, `FUZZYHIGHBOUND` = FUZZYHIGHBOUND, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "EXTENT")
  }
}