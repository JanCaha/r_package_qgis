##' QGIS Algorithm provided by GRASS i.his.rgb (grass7:i.his.rgb)
##'
##' @title QGIS algorithm i.his.rgb
##'
##' @param hue `raster` - Name of input raster map (hue). Path to a raster layer.
##' @param intensity `raster` - Name of input raster map (intensity). Path to a raster layer.
##' @param saturation `raster` - Name of input raster map (saturation). Path to a raster layer.
##' @param red `rasterDestination` - Red. Path for new raster layer.
##' @param green `rasterDestination` - Green. Path for new raster layer.
##' @param blue `rasterDestination` - Blue. Path for new raster layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param GRASS_RASTER_FORMAT_OPT `string` - Output Rasters format options (createopt). String value.
##' @param GRASS_RASTER_FORMAT_META `string` - Output Rasters format metadata options (metaopt). String value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * red - outputRaster - Red
##' * green - outputRaster - Green
##' * blue - outputRaster - Blue
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_i_his_rgb <- function(hue = qgisprocess::qgis_default_value(), intensity = qgisprocess::qgis_default_value(), saturation = qgisprocess::qgis_default_value(), red = qgisprocess::qgis_default_value(), green = qgisprocess::qgis_default_value(), blue = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("grass7:i.his.rgb")

  output <- qgisprocess::qgis_run_algorithm("grass7:i.his.rgb", `hue` = hue, `intensity` = intensity, `saturation` = saturation, `red` = red, `green` = green, `blue` = blue, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "red")
  }
}