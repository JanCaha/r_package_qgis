##' QGIS Algorithm provided by QGIS (native c++) Raster layer unique values report (native:rasterlayeruniquevaluesreport)
##'
##' @title QGIS algorithm Raster layer unique values report
##'
##' @param INPUT `raster` - Input layer. Path to a raster layer.
##' @param BAND `band` - Band number. Integer value representing an existing raster band number.
##' @param OUTPUT_HTML_FILE `fileDestination` - Unique values report. Path for new file.
##' @param OUTPUT_TABLE `sink` - Unique values table. Path for new vector layer.
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
##' * NODATA_PIXEL_COUNT - outputNumber - NODATA pixel count
##' * OUTPUT_HTML_FILE - outputHtml - Unique values report
##' * OUTPUT_TABLE - outputVector - Unique values table
##' * TOTAL_PIXEL_COUNT - outputNumber - Total pixel count
##' * WIDTH_IN_PIXELS - outputNumber - Width in pixels
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_rasterlayeruniquevaluesreport <- function(INPUT = qgisprocess:::qgis_default_value(), BAND = qgisprocess:::qgis_default_value(), OUTPUT_HTML_FILE = qgisprocess:::qgis_default_value(), OUTPUT_TABLE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:rasterlayeruniquevaluesreport")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:rasterlayeruniquevaluesreport", `INPUT` = INPUT, `BAND` = BAND, `OUTPUT_HTML_FILE` = OUTPUT_HTML_FILE, `OUTPUT_TABLE` = OUTPUT_TABLE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:rasterlayeruniquevaluesreport", `INPUT` = INPUT, `BAND` = BAND, `OUTPUT_HTML_FILE` = OUTPUT_HTML_FILE, `OUTPUT_TABLE` = OUTPUT_TABLE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "CRS_AUTHID")
  }
}