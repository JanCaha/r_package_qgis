##' QGIS Algorithm provided by GRASS i.eb.soilheatflux (grass7:i.eb.soilheatflux)
##'
##' @title QGIS algorithm i.eb.soilheatflux
##'
##' @param albedo `raster` - Name of albedo raster map (0.0;1.0). Path to a raster layer.
##' @param ndvi `raster` - Name of NDVI raster map (-1.0;+1.0). Path to a raster layer.
##' @param temperature `raster` - Name of Surface temperature raster map (K). Path to a raster layer.
##' @param netradiation `raster` - Name of Net Radiation raster map (W/m2). Path to a raster layer.
##' @param localutctime `raster` - Name of time of satellite overpass raster map (local time in UTC). Path to a raster layer.
##' @param .r `boolean` - HAPEX-Sahel empirical correction (Roerink, 1995). 1 for true/yes. 0 for false/no. Original algorithm parameter name: -r.
##' @param output `rasterDestination` - Soil Heat Flux. Path for new raster layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param GRASS_RASTER_FORMAT_OPT `string` - Output Rasters format options (createopt). String value.
##' @param GRASS_RASTER_FORMAT_META `string` - Output Rasters format metadata options (metaopt). String value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * output - outputRaster - Soil Heat Flux
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_i_eb_soilheatflux <- function(albedo = qgisprocess::qgis_default_value(), ndvi = qgisprocess::qgis_default_value(), temperature = qgisprocess::qgis_default_value(), netradiation = qgisprocess::qgis_default_value(), localutctime = qgisprocess::qgis_default_value(), .r = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("grass7:i.eb.soilheatflux",`albedo` = albedo, `ndvi` = ndvi, `temperature` = temperature, `netradiation` = netradiation, `localutctime` = localutctime, `-r` = .r, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}