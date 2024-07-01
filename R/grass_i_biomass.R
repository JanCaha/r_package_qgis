##' QGIS Algorithm provided by GRASS i.biomass (grass:i.biomass). Computes biomass growth, precursor of crop yield calculation.
##'
##' @title QGIS algorithm - i.biomass
##'
##' @param fpar `raster` - Name of fPAR raster map. Path to a raster layer.
##' @param lightuse_efficiency `raster` - Name of light use efficiency raster map (UZB:cotton=1.9). Path to a raster layer.
##' @param latitude `raster` - Name of degree latitude raster map (dd.ddd). Path to a raster layer.
##' @param dayofyear `raster` - Name of Day of Year raster map (1-366). Path to a raster layer.
##' @param transmissivity_singleway `raster` - Name of single-way transmissivity raster map (0.0-1.0). Path to a raster layer.
##' @param water_availability `raster` - Value of water availability raster map (0.0-1.0). Path to a raster layer.
##' @param output `rasterDestination` - Biomass. Path for new raster layer.
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
##' * output - outputRaster - Biomass
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

grass_i_biomass <- function(fpar = qgisprocess:::qgis_default_value(), lightuse_efficiency = qgisprocess:::qgis_default_value(), latitude = qgisprocess:::qgis_default_value(), dayofyear = qgisprocess:::qgis_default_value(), transmissivity_singleway = qgisprocess:::qgis_default_value(), water_availability = qgisprocess:::qgis_default_value(), output = qgisprocess:::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess:::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass:i.biomass")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass:i.biomass", `fpar` = fpar, `lightuse_efficiency` = lightuse_efficiency, `latitude` = latitude, `dayofyear` = dayofyear, `transmissivity_singleway` = transmissivity_singleway, `water_availability` = water_availability, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass:i.biomass", `fpar` = fpar, `lightuse_efficiency` = lightuse_efficiency, `latitude` = latitude, `dayofyear` = dayofyear, `transmissivity_singleway` = transmissivity_singleway, `water_availability` = water_availability, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "output")
  }
}