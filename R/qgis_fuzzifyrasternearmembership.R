##' QGIS Algorithm provided by QGIS (native c++) Fuzzify raster (near membership) (native:fuzzifyrasternearmembership). Transforms an input raster to a fuzzified raster where values range from 0 to 1 following the 'near' fuzzy membership function. The Fuzzify raster (near membership) algorithm transforms an input raster to a fuzzified raster and thereby assigns values between 0 and 1 following the 'near' fuzzy membership function. The value of 0 implies no membership with the defined fuzzy set, a value of 1 depicts full membership. In between, the degree of membership of raster values follows the 'near' membership function.  The 'near' function is constructed using two user-defined input values which set the midpoint of the 'near' function (midpoint, results to 1) and a predefined function spread which controls the function spread.  This function is typically used when a certain range of raster values near a predefined function midpoint should become members of the fuzzy set. The function generally shows a higher rate of decay than the gaussian membership function.
##'
##' @title QGIS algorithm - Fuzzify raster (near membership)
##'
##' @param INPUT `raster` - Input Raster. Path to a raster layer.
##' @param BAND `band` - Band Number. Integer value representing an existing raster band number.
##' @param FUZZYMIDPOINT `number` - Function midpoint. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param FUZZYSPREAD `number` - Function spread. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param CREATION_OPTIONS `string` - Creation options. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
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

qgis_fuzzifyrasternearmembership <- function(INPUT = qgisprocess:::qgis_default_value(), BAND = qgisprocess:::qgis_default_value(), FUZZYMIDPOINT = qgisprocess:::qgis_default_value(), FUZZYSPREAD = qgisprocess:::qgis_default_value(), CREATION_OPTIONS = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:fuzzifyrasternearmembership")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:fuzzifyrasternearmembership", `INPUT` = INPUT, `BAND` = BAND, `FUZZYMIDPOINT` = FUZZYMIDPOINT, `FUZZYSPREAD` = FUZZYSPREAD, `CREATION_OPTIONS` = CREATION_OPTIONS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:fuzzifyrasternearmembership", `INPUT` = INPUT, `BAND` = BAND, `FUZZYMIDPOINT` = FUZZYMIDPOINT, `FUZZYSPREAD` = FUZZYSPREAD, `CREATION_OPTIONS` = CREATION_OPTIONS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "CRS_AUTHID")
  }
}