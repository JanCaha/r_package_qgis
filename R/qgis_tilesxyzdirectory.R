##' QGIS Algorithm provided by QGIS (native c++) Generate XYZ tiles (Directory) (native:tilesxyzdirectory). Generates XYZ tiles of map canvas content and saves them as individual images in a directory.
##'
##' @title QGIS algorithm - Generate XYZ tiles (Directory)
##'
##' @param EXTENT `extent` - Extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param ZOOM_MIN `number` - Minimum zoom. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ZOOM_MAX `number` - Maximum zoom. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DPI `number` - DPI. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param BACKGROUND_COLOR `color` - Background color. String representation of color, e.g #ff0000 or rgba(200,100,50,0.8). field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ANTIALIAS `boolean` - Enable antialiasing. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TILE_FORMAT `enum`  of `("PNG", "JPG")` - Tile format. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param QUALITY `number` - Quality (JPG only). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param METATILESIZE `number` - Metatile size. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TILE_WIDTH `number` - Tile width. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TILE_HEIGHT `number` - Tile height. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TMS_CONVENTION `boolean` - Use inverted tile Y axis (TMS convention). 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param HTML_TITLE `string` - Leaflet HTML output title. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param HTML_ATTRIBUTION `string` - Leaflet HTML output attribution. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param HTML_OSM `boolean` - Include OpenStreetMap basemap in Leaflet HTML output. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT_DIRECTORY `folderDestination` - Output directory. Path for an existing or new folder.
##' @param OUTPUT_HTML `fileDestination` - Output html (Leaflet). Path for new file.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT_DIRECTORY - outputFolder - Output directory
##' * OUTPUT_HTML - outputHtml - Output html (Leaflet)
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_tilesxyzdirectory <- function(EXTENT = qgisprocess:::qgis_default_value(), ZOOM_MIN = qgisprocess:::qgis_default_value(), ZOOM_MAX = qgisprocess:::qgis_default_value(), DPI = qgisprocess:::qgis_default_value(), BACKGROUND_COLOR = qgisprocess:::qgis_default_value(), ANTIALIAS = qgisprocess:::qgis_default_value(), TILE_FORMAT = qgisprocess:::qgis_default_value(), QUALITY = qgisprocess:::qgis_default_value(), METATILESIZE = qgisprocess:::qgis_default_value(), TILE_WIDTH = qgisprocess:::qgis_default_value(), TILE_HEIGHT = qgisprocess:::qgis_default_value(), TMS_CONVENTION = qgisprocess:::qgis_default_value(), HTML_TITLE = qgisprocess:::qgis_default_value(), HTML_ATTRIBUTION = qgisprocess:::qgis_default_value(), HTML_OSM = qgisprocess:::qgis_default_value(), OUTPUT_DIRECTORY = qgisprocess:::qgis_default_value(), OUTPUT_HTML = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:tilesxyzdirectory")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:tilesxyzdirectory", `EXTENT` = EXTENT, `ZOOM_MIN` = ZOOM_MIN, `ZOOM_MAX` = ZOOM_MAX, `DPI` = DPI, `BACKGROUND_COLOR` = BACKGROUND_COLOR, `ANTIALIAS` = ANTIALIAS, `TILE_FORMAT` = TILE_FORMAT, `QUALITY` = QUALITY, `METATILESIZE` = METATILESIZE, `TILE_WIDTH` = TILE_WIDTH, `TILE_HEIGHT` = TILE_HEIGHT, `TMS_CONVENTION` = TMS_CONVENTION, `HTML_TITLE` = HTML_TITLE, `HTML_ATTRIBUTION` = HTML_ATTRIBUTION, `HTML_OSM` = HTML_OSM, `OUTPUT_DIRECTORY` = OUTPUT_DIRECTORY, `OUTPUT_HTML` = OUTPUT_HTML,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:tilesxyzdirectory", `EXTENT` = EXTENT, `ZOOM_MIN` = ZOOM_MIN, `ZOOM_MAX` = ZOOM_MAX, `DPI` = DPI, `BACKGROUND_COLOR` = BACKGROUND_COLOR, `ANTIALIAS` = ANTIALIAS, `TILE_FORMAT` = TILE_FORMAT, `QUALITY` = QUALITY, `METATILESIZE` = METATILESIZE, `TILE_WIDTH` = TILE_WIDTH, `TILE_HEIGHT` = TILE_HEIGHT, `TMS_CONVENTION` = TMS_CONVENTION, `HTML_TITLE` = HTML_TITLE, `HTML_ATTRIBUTION` = HTML_ATTRIBUTION, `HTML_OSM` = HTML_OSM, `OUTPUT_DIRECTORY` = OUTPUT_DIRECTORY, `OUTPUT_HTML` = OUTPUT_HTML,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT_DIRECTORY")
  }
}