##' QGIS Algorithm provided by GRASS i.eb.evapfr (grass7:i.eb.evapfr)
##'
##' @title QGIS algorithm i.eb.evapfr
##'
##' @param netradiation `raster` - Name of Net Radiation raster map (W/m2). Path to a raster layer.
##' @param soilheatflux `raster` - Name of soil heat flux raster map (W/m2). Path to a raster layer.
##' @param sensibleheatflux `raster` - Name of sensible heat flux raster map (W/m2). Path to a raster layer.
##' @param evaporativefraction `rasterDestination` - Evaporative Fraction. Path for new raster layer.
##' @param soilmoisture `rasterDestination` - Root Zone Soil Moisture. Path for new raster layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param GRASS_RASTER_FORMAT_OPT `string` - Output Rasters format options (createopt). String value.
##' @param GRASS_RASTER_FORMAT_META `string` - Output Rasters format metadata options (metaopt). String value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * evaporativefraction - outputRaster - Evaporative Fraction
##' * soilmoisture - outputRaster - Root Zone Soil Moisture
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_i_eb_evapfr <- function(netradiation = qgisprocess::qgis_default_value(), soilheatflux = qgisprocess::qgis_default_value(), sensibleheatflux = qgisprocess::qgis_default_value(), evaporativefraction = qgisprocess::qgis_default_value(), soilmoisture = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("grass7:i.eb.evapfr")

  output <- qgisprocess::qgis_run_algorithm("grass7:i.eb.evapfr", `netradiation` = netradiation, `soilheatflux` = soilheatflux, `sensibleheatflux` = sensibleheatflux, `evaporativefraction` = evaporativefraction, `soilmoisture` = soilmoisture, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "evaporativefraction")
  }
}