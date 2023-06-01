##' QGIS Algorithm provided by GRASS r.his (grass7:r.his)
##'
##' @title QGIS algorithm r.his
##'
##' @param hue `raster` - Hue. Path to a raster layer.
##' @param intensity `raster` - Intensity. Path to a raster layer.
##' @param saturation `raster` - Saturation. Path to a raster layer.
##' @param bgcolor `string` - Color to use instead of NULL values. Either a standard color name, R:G:B triplet, or "none". String value.
##' @param .c `boolean` - Use colors from color tables for NULL values. 1 for true/yes. 0 for false/no. Original algorithm parameter name: -c.
##' @param red `rasterDestination` - Red. Path for new raster layer.
##' @param green `rasterDestination` - Green. Path for new raster layer.
##' @param blue `rasterDestination` - Blue. Path for new raster layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param GRASS_RASTER_FORMAT_OPT `string` - Output Rasters format options (createopt). String value.
##' @param GRASS_RASTER_FORMAT_META `string` - Output Rasters format metadata options (metaopt). String value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * blue - outputRaster - Blue
##' * green - outputRaster - Green
##' * red - outputRaster - Red
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

grass7_r_his <- function(hue = qgisprocess:::qgis_default_value(), intensity = qgisprocess:::qgis_default_value(), saturation = qgisprocess:::qgis_default_value(), bgcolor = qgisprocess:::qgis_default_value(), .c = qgisprocess:::qgis_default_value(), red = qgisprocess:::qgis_default_value(), green = qgisprocess:::qgis_default_value(), blue = qgisprocess:::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess:::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass7:r.his")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass7:r.his", `hue` = hue, `intensity` = intensity, `saturation` = saturation, `bgcolor` = bgcolor, `-c` = .c, `red` = red, `green` = green, `blue` = blue, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass7:r.his", `hue` = hue, `intensity` = intensity, `saturation` = saturation, `bgcolor` = bgcolor, `-c` = .c, `red` = red, `green` = green, `blue` = blue, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "blue")
  }
}