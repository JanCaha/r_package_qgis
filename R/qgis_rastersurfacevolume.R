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
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT_HTML_FILE - outputHtml - Surface volume report
##' * OUTPUT_TABLE - outputVector - Surface volume table
##' * VOLUME - outputNumber - Volume
##' * PIXEL_COUNT - outputNumber - Pixel count
##' * AREA - outputNumber - Area
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_rastersurfacevolume <- function(INPUT = qgisprocess::qgis_default_value(), BAND = qgisprocess::qgis_default_value(), LEVEL = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(), OUTPUT_HTML_FILE = qgisprocess::qgis_default_value(), OUTPUT_TABLE = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("native:rastersurfacevolume",`INPUT` = INPUT, `BAND` = BAND, `LEVEL` = LEVEL, `METHOD` = METHOD, `OUTPUT_HTML_FILE` = OUTPUT_HTML_FILE, `OUTPUT_TABLE` = OUTPUT_TABLE,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT_HTML_FILE")
  }
}