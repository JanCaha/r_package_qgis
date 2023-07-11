##' QGIS Algorithm provided by QGIS (native c++) Convert map to raster (native:rasterize). Renders the map canvas to a raster file. This algorithm rasterizes map canvas content.  A map theme can be selected to render a predetermined set of layers with a defined style for each layer. Alternatively, a set of layers can be selected if no map theme is set. If neither map theme nor layer is set, all the visible layers in the set extent will be rendered.  The minimum extent entered will internally be extended to a multiple of the tile size.
##'
##' @title QGIS algorithm - Convert map to raster
##'
##' @param EXTENT `extent` - Minimum extent to render. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param EXTENT_BUFFER `number` - Buffer around tiles in map units. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TILE_SIZE `number` - Tile size. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param MAP_UNITS_PER_PIXEL `number` - Map units per pixel. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param MAKE_BACKGROUND_TRANSPARENT `boolean` - Make background transparent. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param MAP_THEME `maptheme` - Map theme to render. Name of an existing map theme.
##' @param LAYERS `multilayer` - Layers to render. .
##' @param OUTPUT `rasterDestination` - Output layer. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Output layer
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_rasterize <- function(EXTENT = qgisprocess:::qgis_default_value(), EXTENT_BUFFER = qgisprocess:::qgis_default_value(), TILE_SIZE = qgisprocess:::qgis_default_value(), MAP_UNITS_PER_PIXEL = qgisprocess:::qgis_default_value(), MAKE_BACKGROUND_TRANSPARENT = qgisprocess:::qgis_default_value(), MAP_THEME = qgisprocess:::qgis_default_value(), LAYERS = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:rasterize")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:rasterize", `EXTENT` = EXTENT, `EXTENT_BUFFER` = EXTENT_BUFFER, `TILE_SIZE` = TILE_SIZE, `MAP_UNITS_PER_PIXEL` = MAP_UNITS_PER_PIXEL, `MAKE_BACKGROUND_TRANSPARENT` = MAKE_BACKGROUND_TRANSPARENT, `MAP_THEME` = MAP_THEME, `LAYERS` = LAYERS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:rasterize", `EXTENT` = EXTENT, `EXTENT_BUFFER` = EXTENT_BUFFER, `TILE_SIZE` = TILE_SIZE, `MAP_UNITS_PER_PIXEL` = MAP_UNITS_PER_PIXEL, `MAKE_BACKGROUND_TRANSPARENT` = MAKE_BACKGROUND_TRANSPARENT, `MAP_THEME` = MAP_THEME, `LAYERS` = LAYERS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}