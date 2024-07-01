##' QGIS Algorithm provided by GRASS i.his.rgb (grass:i.his.rgb). Transforms raster maps from HIS (Hue-Intensity-Saturation) color space to RGB (Red-Green-Blue) color space.
##'
##' @title QGIS algorithm - i.his.rgb
##'
##' @param hue `raster` - Name of input raster map (hue). Path to a raster layer.
##' @param intensity `raster` - Name of input raster map (intensity). Path to a raster layer.
##' @param saturation `raster` - Name of input raster map (saturation). Path to a raster layer.
##' @param red `rasterDestination` - Red. Path for new raster layer.
##' @param green `rasterDestination` - Green. Path for new raster layer.
##' @param blue `rasterDestination` - Blue. Path for new raster layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS region cellsize (leave 0 for default). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param GRASS_RASTER_FORMAT_OPT `string` - Output Rasters format options (createopt). String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param GRASS_RASTER_FORMAT_META `string` - Output Rasters format metadata options (metaopt). String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
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

grass_i_his_rgb <- function(hue = qgisprocess:::qgis_default_value(), intensity = qgisprocess:::qgis_default_value(), saturation = qgisprocess:::qgis_default_value(), red = qgisprocess:::qgis_default_value(), green = qgisprocess:::qgis_default_value(), blue = qgisprocess:::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess:::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass:i.his.rgb")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass:i.his.rgb", `hue` = hue, `intensity` = intensity, `saturation` = saturation, `red` = red, `green` = green, `blue` = blue, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass:i.his.rgb", `hue` = hue, `intensity` = intensity, `saturation` = saturation, `red` = red, `green` = green, `blue` = blue, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "blue")
  }
}