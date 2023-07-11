##' QGIS Algorithm provided by QGIS (native c++) Fuzzify raster (small membership) (native:fuzzifyrastersmallmembership). The Fuzzify raster (small membership) algorithm transforms an input raster to a fuzzified raster and thereby assigns values between 0 and 1 following the 'small' fuzzy membership function. The value of 0 implies no membership with the defined fuzzy set, a value of 1 depicts full membership. In between, the degree of membership of raster values follows the 'small' membership function.  The 'small' function is constructed using two user-defined input raster values which set the point of half membership (midpoint, results to 0.5) and a predefined function spread which controls the function uptake.  This function is typically used when smaller input raster values should become members of the fuzzy set more easily than higher values.
##'
##' @title QGIS algorithm - Fuzzify raster (small membership)
##'
##' @param INPUT `raster` - Input Raster. Path to a raster layer.
##' @param BAND `band` - Band Number. Integer value representing an existing raster band number.
##' @param FUZZYMIDPOINT `number` - Function midpoint. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param FUZZYSPREAD `number` - Function spread. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
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

qgis_fuzzifyrastersmallmembership <- function(INPUT = qgisprocess:::qgis_default_value(), BAND = qgisprocess:::qgis_default_value(), FUZZYMIDPOINT = qgisprocess:::qgis_default_value(), FUZZYSPREAD = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:fuzzifyrastersmallmembership")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:fuzzifyrastersmallmembership", `INPUT` = INPUT, `BAND` = BAND, `FUZZYMIDPOINT` = FUZZYMIDPOINT, `FUZZYSPREAD` = FUZZYSPREAD, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:fuzzifyrastersmallmembership", `INPUT` = INPUT, `BAND` = BAND, `FUZZYMIDPOINT` = FUZZYMIDPOINT, `FUZZYSPREAD` = FUZZYSPREAD, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "CRS_AUTHID")
  }
}