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
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
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
##' @importFrom qgisprocess qgis_run_algorithm

qgis_fuzzifyrasterlinearmembership <- function(INPUT = qgisprocess:::qgis_default_value(), BAND = qgisprocess:::qgis_default_value(), FUZZYLOWBOUND = qgisprocess:::qgis_default_value(), FUZZYHIGHBOUND = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:fuzzifyrasterlinearmembership")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:fuzzifyrasterlinearmembership", `INPUT` = INPUT, `BAND` = BAND, `FUZZYLOWBOUND` = FUZZYLOWBOUND, `FUZZYHIGHBOUND` = FUZZYHIGHBOUND, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:fuzzifyrasterlinearmembership", `INPUT` = INPUT, `BAND` = BAND, `FUZZYLOWBOUND` = FUZZYLOWBOUND, `FUZZYHIGHBOUND` = FUZZYHIGHBOUND, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "CRS_AUTHID")
  }
}