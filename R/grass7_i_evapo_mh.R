##' QGIS Algorithm provided by GRASS i.evapo.mh (grass7:i.evapo.mh)
##'
##' @title QGIS algorithm i.evapo.mh
##'
##' @param netradiation_diurnal `raster` - Name of input diurnal net radiation raster map (W/m2/d). Path to a raster layer.
##' @param average_temperature `raster` - Name of input average air temperature raster map (C). Path to a raster layer.
##' @param minimum_temperature `raster` - Name of input minimum air temperature raster map (C). Path to a raster layer.
##' @param maximum_temperature `raster` - Name of input maximum air temperature raster map (C). Path to a raster layer.
##' @param precipitation `raster` - Name of precipitation raster map (mm/month). Path to a raster layer.
##' @param .z `boolean` - Set negative ETa to zero. 1 for true/yes. 0 for false/no. Original algorithm parameter name: {name}.
##' @param .h `boolean` - Use original Hargreaves (1985). 1 for true/yes. 0 for false/no. Original algorithm parameter name: {name}.
##' @param .s `boolean` - Use Hargreaves-Samani (1985). 1 for true/yes. 0 for false/no. Original algorithm parameter name: {name}.
##' @param output `rasterDestination` - Evapotranspiration. Path for new raster layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param GRASS_RASTER_FORMAT_OPT `string` - Output Rasters format options (createopt). String value.
##' @param GRASS_RASTER_FORMAT_META `string` - Output Rasters format metadata options (metaopt). String value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * output - outputRaster - Evapotranspiration
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_i_evapo_mh <- function(netradiation_diurnal = qgisprocess::qgis_default_value(), average_temperature = qgisprocess::qgis_default_value(), minimum_temperature = qgisprocess::qgis_default_value(), maximum_temperature = qgisprocess::qgis_default_value(), precipitation = qgisprocess::qgis_default_value(), .z = qgisprocess::qgis_default_value(), .h = qgisprocess::qgis_default_value(), .s = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("grass7:i.evapo.mh",`netradiation_diurnal` = netradiation_diurnal, `average_temperature` = average_temperature, `minimum_temperature` = minimum_temperature, `maximum_temperature` = maximum_temperature, `precipitation` = precipitation, `-z` = .z, `-h` = .h, `-s` = .s, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
}
}