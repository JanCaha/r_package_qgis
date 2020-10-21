##' QGIS Algorithm provided by GRASS r.relief.scaling (grass7:r.relief.scaling)
##'
##' @title QGIS algorithm r.relief.scaling
##'
##' @param input `raster` - Input elevation layer. Path to a raster layer.
##' @param altitude `number` - Altitude of the sun in degrees above the horizon. A numeric value.
##' @param azimuth `number` - Azimuth of the sun in degrees to the east of north. A numeric value.
##' @param zscale `number` - Factor for exaggerating relief. A numeric value.
##' @param scale `number` - Scale factor for converting horizontal units to elevation units. A numeric value.
##' @param units `enum`  of `("intl", "survey")` - Elevation units (overrides scale factor). Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param output `rasterDestination` - Output shaded relief layer. Path for new raster layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param GRASS_RASTER_FORMAT_OPT `string` - Output Rasters format options (createopt). String value.
##' @param GRASS_RASTER_FORMAT_META `string` - Output Rasters format metadata options (metaopt). String value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * output - outputRaster - Output shaded relief layer
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_r_relief_scaling <- function(input = qgisprocess::qgis_default_value(), altitude = qgisprocess::qgis_default_value(), azimuth = qgisprocess::qgis_default_value(), zscale = qgisprocess::qgis_default_value(), scale = qgisprocess::qgis_default_value(), units = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("grass7:r.relief.scaling",`input` = input, `altitude` = altitude, `azimuth` = azimuth, `zscale` = zscale, `scale` = scale, `units` = units, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}