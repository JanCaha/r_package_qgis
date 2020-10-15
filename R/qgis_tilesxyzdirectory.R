##' QGIS Algorithm provided by QGIS Generate XYZ tiles (Directory) (qgis:tilesxyzdirectory)
##'
##' @title QGIS algorithm Generate XYZ tiles (Directory)
##'
##' @param EXTENT `extent` - Extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param ZOOM_MIN `number` - Minimum zoom. A numeric value.
##' @param ZOOM_MAX `number` - Maximum zoom. A numeric value.
##' @param DPI `number` - DPI. A numeric value.
##' @param BACKGROUND_COLOR `color` - Background color. String representation of color, e.g #ff0000 or rgba(200,100,50,0.8).
##' @param TILE_FORMAT `enum`  of `("PNG", "JPG")` - Tile format. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param QUALITY `number` - Quality (JPG only). A numeric value.
##' @param METATILESIZE `number` - Metatile size. A numeric value.
##' @param TILE_WIDTH `number` - Tile width. A numeric value.
##' @param TILE_HEIGHT `number` - Tile height. A numeric value.
##' @param TMS_CONVENTION `boolean` - Use inverted tile Y axis (TMS convention). 1 for true/yes. 0 for false/no.
##' @param OUTPUT_DIRECTORY `folderDestination` - Output directory. Path for an existing or new folder.
##' @param OUTPUT_HTML `fileDestination` - Output html (Leaflet). Path for new file.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT_DIRECTORY - outputFolder - Output directory
##' * OUTPUT_HTML - outputHtml - Output html 
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_tilesxyzdirectory <- function(EXTENT = qgisprocess::qgis_default_value(), ZOOM_MIN = qgisprocess::qgis_default_value(), ZOOM_MAX = qgisprocess::qgis_default_value(), DPI = qgisprocess::qgis_default_value(), BACKGROUND_COLOR = qgisprocess::qgis_default_value(), TILE_FORMAT = qgisprocess::qgis_default_value(), QUALITY = qgisprocess::qgis_default_value(), METATILESIZE = qgisprocess::qgis_default_value(), TILE_WIDTH = qgisprocess::qgis_default_value(), TILE_HEIGHT = qgisprocess::qgis_default_value(), TMS_CONVENTION = qgisprocess::qgis_default_value(), OUTPUT_DIRECTORY = qgisprocess::qgis_default_value(), OUTPUT_HTML = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("qgis:tilesxyzdirectory",`EXTENT` = EXTENT, `ZOOM_MIN` = ZOOM_MIN, `ZOOM_MAX` = ZOOM_MAX, `DPI` = DPI, `BACKGROUND_COLOR` = BACKGROUND_COLOR, `TILE_FORMAT` = TILE_FORMAT, `QUALITY` = QUALITY, `METATILESIZE` = METATILESIZE, `TILE_WIDTH` = TILE_WIDTH, `TILE_HEIGHT` = TILE_HEIGHT, `TMS_CONVENTION` = TMS_CONVENTION, `OUTPUT_DIRECTORY` = OUTPUT_DIRECTORY, `OUTPUT_HTML` = OUTPUT_HTML,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT_DIRECTORY")
}
}