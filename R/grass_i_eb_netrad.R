##' QGIS Algorithm provided by GRASS i.eb.netrad (grass:i.eb.netrad). Net radiation approximation (Bastiaanssen, 1995).
##'
##' @title QGIS algorithm - i.eb.netrad
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
##' * output - outputRaster - Net Radiation
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

grass_i_eb_netrad <- function(albedo = qgisprocess:::qgis_default_value(), ndvi = qgisprocess:::qgis_default_value(), temperature = qgisprocess:::qgis_default_value(), localutctime = qgisprocess:::qgis_default_value(), temperaturedifference2m = qgisprocess:::qgis_default_value(), emissivity = qgisprocess:::qgis_default_value(), transmissivity_singleway = qgisprocess:::qgis_default_value(), dayofyear = qgisprocess:::qgis_default_value(), sunzenithangle = qgisprocess:::qgis_default_value(), output = qgisprocess:::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess:::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass:i.eb.netrad")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass:i.eb.netrad", `albedo` = albedo, `ndvi` = ndvi, `temperature` = temperature, `localutctime` = localutctime, `temperaturedifference2m` = temperaturedifference2m, `emissivity` = emissivity, `transmissivity_singleway` = transmissivity_singleway, `dayofyear` = dayofyear, `sunzenithangle` = sunzenithangle, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass:i.eb.netrad", `albedo` = albedo, `ndvi` = ndvi, `temperature` = temperature, `localutctime` = localutctime, `temperaturedifference2m` = temperaturedifference2m, `emissivity` = emissivity, `transmissivity_singleway` = transmissivity_singleway, `dayofyear` = dayofyear, `sunzenithangle` = sunzenithangle, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "output")
  }
}