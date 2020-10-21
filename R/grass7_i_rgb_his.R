##' QGIS Algorithm provided by GRASS i.rgb.his (grass7:i.rgb.his)
##'
##' @title QGIS algorithm i.rgb.his
##'
##' @param red `raster` - Name for input raster map (red). Path to a raster layer.
##' @param green `raster` - Name for input raster map (green). Path to a raster layer.
##' @param blue `raster` - Name for input raster map (blue). Path to a raster layer.
##' @param hue `rasterDestination` - Hue. Path for new raster layer.
##' @param intensity `rasterDestination` - Intensity. Path for new raster layer.
##' @param saturation `rasterDestination` - Saturation. Path for new raster layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param GRASS_RASTER_FORMAT_OPT `string` - Output Rasters format options (createopt). String value.
##' @param GRASS_RASTER_FORMAT_META `string` - Output Rasters format metadata options (metaopt). String value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * hue - outputRaster - Hue
##' * intensity - outputRaster - Intensity
##' * saturation - outputRaster - Saturation
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_i_rgb_his <- function(red = qgisprocess::qgis_default_value(), green = qgisprocess::qgis_default_value(), blue = qgisprocess::qgis_default_value(), hue = qgisprocess::qgis_default_value(), intensity = qgisprocess::qgis_default_value(), saturation = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("grass7:i.rgb.his",`red` = red, `green` = green, `blue` = blue, `hue` = hue, `intensity` = intensity, `saturation` = saturation, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "hue")
  }
}