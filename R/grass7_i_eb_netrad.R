##' QGIS Algorithm provided by GRASS i.eb.netrad (grass7:i.eb.netrad)
##'
##' @title QGIS algorithm i.eb.netrad
##'
##' @param albedo `raster` - Name of albedo raster map (0.0;1.0). Path to a raster layer.
##' @param ndvi `raster` - Name of NDVI raster map (-1.0;+1.0). Path to a raster layer.
##' @param temperature `raster` - Name of surface temperature raster map (K). Path to a raster layer.
##' @param localutctime `raster` - Name of time of satellite overpass raster map (local time in UTC). Path to a raster layer.
##' @param temperaturedifference2m `raster` - Name of the difference map of temperature from surface skin to about 2 m height (K). Path to a raster layer.
##' @param emissivity `raster` - Name of the emissivity map (-). Path to a raster layer.
##' @param transmissivity_singleway `raster` - Name of the single-way atmospheric transmissivitymap (-). Path to a raster layer.
##' @param dayofyear `raster` - Name of the Day Of Year (DOY) map (-). Path to a raster layer.
##' @param sunzenithangle `raster` - Name of the sun zenith angle map (degrees). Path to a raster layer.
##' @param output `rasterDestination` - Net Radiation. Path for new raster layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param GRASS_RASTER_FORMAT_OPT `string` - Output Rasters format options (createopt). String value.
##' @param GRASS_RASTER_FORMAT_META `string` - Output Rasters format metadata options (metaopt). String value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * output - outputRaster - Net Radiation
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_i_eb_netrad <- function(albedo = qgisprocess::qgis_default_value(), ndvi = qgisprocess::qgis_default_value(), temperature = qgisprocess::qgis_default_value(), localutctime = qgisprocess::qgis_default_value(), temperaturedifference2m = qgisprocess::qgis_default_value(), emissivity = qgisprocess::qgis_default_value(), transmissivity_singleway = qgisprocess::qgis_default_value(), dayofyear = qgisprocess::qgis_default_value(), sunzenithangle = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("grass7:i.eb.netrad")
  output <- qgisprocess::qgis_run_algorithm("grass7:i.eb.netrad",`albedo` = albedo, `ndvi` = ndvi, `temperature` = temperature, `localutctime` = localutctime, `temperaturedifference2m` = temperaturedifference2m, `emissivity` = emissivity, `transmissivity_singleway` = transmissivity_singleway, `dayofyear` = dayofyear, `sunzenithangle` = sunzenithangle, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}