##' QGIS Algorithm provided by QGIS (native c++) Raster surface volume (native:rastersurfacevolume)
##'
##' @title QGIS algorithm Raster surface volume
##'
##' @param INPUT `raster` - Input layer. Path to a raster layer.
##' @param BAND `band` - Band number. Integer value representing an existing raster band number.
##' @param LEVEL `number` - Base level. A numeric value.
##' @param METHOD `enum`  of `("Count Only Above Base Level", "Count Only Below Base Level", "Subtract Volumes Below Base Level", "Add Volumes Below Base Level")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param OUTPUT_HTML_FILE `fileDestination` - Surface volume report. Path for new file.
##' @param OUTPUT_TABLE `sink` - Surface volume table. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * AREA - outputNumber - Area
##' * OUTPUT_HTML_FILE - outputHtml - Surface volume report
##' * OUTPUT_TABLE - outputVector - Surface volume table
##' * PIXEL_COUNT - outputNumber - Pixel count
##' * VOLUME - outputNumber - Volume
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_rastersurfacevolume <- function(INPUT = qgisprocess:::qgis_default_value(), BAND = qgisprocess:::qgis_default_value(), LEVEL = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), OUTPUT_HTML_FILE = qgisprocess:::qgis_default_value(), OUTPUT_TABLE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:rastersurfacevolume")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:rastersurfacevolume", `INPUT` = INPUT, `BAND` = BAND, `LEVEL` = LEVEL, `METHOD` = METHOD, `OUTPUT_HTML_FILE` = OUTPUT_HTML_FILE, `OUTPUT_TABLE` = OUTPUT_TABLE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:rastersurfacevolume", `INPUT` = INPUT, `BAND` = BAND, `LEVEL` = LEVEL, `METHOD` = METHOD, `OUTPUT_HTML_FILE` = OUTPUT_HTML_FILE, `OUTPUT_TABLE` = OUTPUT_TABLE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "AREA")
  }
}