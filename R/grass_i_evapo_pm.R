##' QGIS Algorithm provided by GRASS i.evapo.pm (grass:i.evapo.pm). Computes potential evapotranspiration calculation with hourly Penman-Monteith.
##'
##' @title QGIS algorithm - i.evapo.pm
##'
##' @param elevation `raster` - Name of input elevation raster map (m a.s.l.). Path to a raster layer.
##' @param temperature `raster` - Name of input temperature raster map (C). Path to a raster layer.
##' @param relativehumidity `raster` - Name of input relative humidity raster map (%). Path to a raster layer.
##' @param windspeed `raster` - Name of input wind speed raster map (m\code{/}s). Path to a raster layer.
##' @param netradiation `raster` - Name of input net solar radiation raster map (MJ\code{/}m2\code{/}h). Path to a raster layer.
##' @param cropheight `raster` - Name of input crop height raster map (m). Path to a raster layer.
##' @param .z `boolean` - Set negative ETa to zero. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -z.
##' @param .n `boolean` - Use Night-time. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -n.
##' @param output `rasterDestination` - Evapotranspiration. Path for new raster layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param GRASS_RASTER_FORMAT_OPT `string` - Output Rasters format options (createopt). String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param GRASS_RASTER_FORMAT_META `string` - Output Rasters format metadata options (metaopt). String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * output - outputRaster - Evapotranspiration
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

grass_i_evapo_pm <- function(elevation = qgisprocess:::qgis_default_value(), temperature = qgisprocess:::qgis_default_value(), relativehumidity = qgisprocess:::qgis_default_value(), windspeed = qgisprocess:::qgis_default_value(), netradiation = qgisprocess:::qgis_default_value(), cropheight = qgisprocess:::qgis_default_value(), .z = qgisprocess:::qgis_default_value(), .n = qgisprocess:::qgis_default_value(), output = qgisprocess:::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess:::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass:i.evapo.pm")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass:i.evapo.pm", `elevation` = elevation, `temperature` = temperature, `relativehumidity` = relativehumidity, `windspeed` = windspeed, `netradiation` = netradiation, `cropheight` = cropheight, `-z` = .z, `-n` = .n, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass:i.evapo.pm", `elevation` = elevation, `temperature` = temperature, `relativehumidity` = relativehumidity, `windspeed` = windspeed, `netradiation` = netradiation, `cropheight` = cropheight, `-z` = .z, `-n` = .n, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "output")
  }
}