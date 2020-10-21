##' QGIS Algorithm provided by GRASS i.biomass (grass7:i.biomass)
##'
##' @title QGIS algorithm i.biomass
##'
##' @param fpar `raster` - Name of fPAR raster map. Path to a raster layer.
##' @param lightuse_efficiency `raster` - Name of light use efficiency raster map (UZB:cotton=1.9). Path to a raster layer.
##' @param latitude `raster` - Name of degree latitude raster map (dd.ddd). Path to a raster layer.
##' @param dayofyear `raster` - Name of Day of Year raster map (1-366). Path to a raster layer.
##' @param transmissivity_singleway `raster` - Name of single-way transmissivity raster map (0.0-1.0). Path to a raster layer.
##' @param water_availability `raster` - Value of water availability raster map (0.0-1.0). Path to a raster layer.
##' @param output `rasterDestination` - Biomass. Path for new raster layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param GRASS_RASTER_FORMAT_OPT `string` - Output Rasters format options (createopt). String value.
##' @param GRASS_RASTER_FORMAT_META `string` - Output Rasters format metadata options (metaopt). String value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * output - outputRaster - Biomass
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

grass7_i_biomass <- function(fpar = qgisprocess::qgis_default_value(), lightuse_efficiency = qgisprocess::qgis_default_value(), latitude = qgisprocess::qgis_default_value(), dayofyear = qgisprocess::qgis_default_value(), transmissivity_singleway = qgisprocess::qgis_default_value(), water_availability = qgisprocess::qgis_default_value(), output = qgisprocess::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("grass7:i.biomass",`fpar` = fpar, `lightuse_efficiency` = lightuse_efficiency, `latitude` = latitude, `dayofyear` = dayofyear, `transmissivity_singleway` = transmissivity_singleway, `water_availability` = water_availability, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "output")
  }
}