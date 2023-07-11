##' QGIS Algorithm provided by QGIS (native c++) Raster surface volume (native:rastersurfacevolume). Calculates the volume under a raster grid's surface. This algorithm calculates the volume under a raster grid's surface.  Several methods of volume calculation are available, which control whether only values above or below the specified base level are considered, or whether volumes below the base level should be added or subtracted from the total volume.  The algorithm outputs the calculated volume, the total area, and the total number of pixels analysed. If the 'Count Only Above Base Level' or 'Count Only Below Base Level' methods are used, then the calculated area and pixel count only includes pixels which are above or below the specified base level respectively.  Units of the calculated volume are dependent on the coordinate reference system of the input raster file. For a CRS in meters, with a DEM height in meters, the calculated value will be in meters³. If instead the input raster is in a geographic coordinate system (e.g. latitude/longitude values), then the result will be in degrees² × meters, and an appropriate scaling factor will need to be applied in order to convert to meters³.
##'
##' @title QGIS algorithm - Raster surface volume
##'
##' @param INPUT `raster` - Input layer. Path to a raster layer.
##' @param BAND `band` - Band number. Integer value representing an existing raster band number.
##' @param LEVEL `number` - Base level. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
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