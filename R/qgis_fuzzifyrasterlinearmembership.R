##' QGIS Algorithm provided by QGIS (native c++) Fuzzify raster (linear membership) (native:fuzzifyrasterlinearmembership). The Fuzzify raster (linear membership) algorithm transforms an input raster to a fuzzified raster and thereby assigns values between 0 and 1 following a linear fuzzy membership function. The value of 0 implies no membership with the defined fuzzy set, a value of 1 depicts full membership. In between, the degree of membership of raster values follows a linear membership function.  The linear function is constructed using two user-defined input raster values which set the point of full membership (high bound, results to 1) and no membership (low bound, results to 0) respectively. The fuzzy set in between those values is defined as a linear function.  Both increasing and decreasing fuzzy sets can be modeled by swapping the high and low bound parameters.
##'
##' @title QGIS algorithm - Fuzzify raster (linear membership)
##'
##' @param INPUT `raster` - Input Raster. Path to a raster layer.
##' @param BAND `band` - Band Number. Integer value representing an existing raster band number.
##' @param FUZZYLOWBOUND `number` - Low fuzzy membership bound. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param FUZZYHIGHBOUND `number` - High fuzzy membership bound. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
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