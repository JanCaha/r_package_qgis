##' QGIS Algorithm provided by QGIS (native c++) Fill NoData cells (native:fillnodata). This algorithm resets the NoData values in the input raster to a chosen value, resulting in a raster dataset with no NoData pixels. This value can be set by the user using the Fill value parameter. The algorithm respects the input raster data type (eg. a floating point fill value will be truncated when applied to an integer raster).
##'
##' @title QGIS algorithm - Fill NoData cells
##'
##' @param INPUT `raster` - Raster input. Path to a raster layer.
##' @param BAND `band` - Band Number. Integer value representing an existing raster band number.
##' @param FILL_VALUE `number` - Fill value. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `rasterDestination` - Output raster. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Output raster
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_fillnodata <- function(INPUT = qgisprocess:::qgis_default_value(), BAND = qgisprocess:::qgis_default_value(), FILL_VALUE = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:fillnodata")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:fillnodata", `INPUT` = INPUT, `BAND` = BAND, `FILL_VALUE` = FILL_VALUE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:fillnodata", `INPUT` = INPUT, `BAND` = BAND, `FILL_VALUE` = FILL_VALUE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}