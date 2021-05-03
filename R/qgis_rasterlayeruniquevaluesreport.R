##' QGIS Algorithm provided by QGIS (native c++) Raster layer unique values report (native:rasterlayeruniquevaluesreport)
##'
##' @title QGIS algorithm Raster layer unique values report
##'
##' @param INPUT `raster` - Input layer. Path to a raster layer.
##' @param BAND `band` - Band number. Integer value representing an existing raster band number.
##' @param OUTPUT_HTML_FILE `fileDestination` - Unique values report. Path for new file.
##' @param OUTPUT_TABLE `sink` - Unique values table. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT_HTML_FILE - outputHtml - Unique values report
##' * OUTPUT_TABLE - outputVector - Unique values table
##' * EXTENT - outputString - Extent
##' * CRS_AUTHID - outputString - CRS authority identifier
##' * WIDTH_IN_PIXELS - outputNumber - Width in pixels
##' * HEIGHT_IN_PIXELS - outputNumber - Height in pixels
##' * TOTAL_PIXEL_COUNT - outputNumber - Total pixel count
##' * NODATA_PIXEL_COUNT - outputNumber - NODATA pixel count
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_rasterlayeruniquevaluesreport <- function(INPUT = qgisprocess::qgis_default_value(), BAND = qgisprocess::qgis_default_value(), OUTPUT_HTML_FILE = qgisprocess::qgis_default_value(), OUTPUT_TABLE = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("native:rasterlayeruniquevaluesreport")
  output <- qgisprocess::qgis_run_algorithm("native:rasterlayeruniquevaluesreport",`INPUT` = INPUT, `BAND` = BAND, `OUTPUT_HTML_FILE` = OUTPUT_HTML_FILE, `OUTPUT_TABLE` = OUTPUT_TABLE,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT_HTML_FILE")
  }
}