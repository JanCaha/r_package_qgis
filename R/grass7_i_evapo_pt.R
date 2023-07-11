##' QGIS Algorithm provided by GRASS i.evapo.pt (grass7:i.evapo.pt). Computes evapotranspiration calculation Priestley and Taylor formulation, 1972.
##'
##' @title QGIS algorithm - i.evapo.pt
##'
##' @param net_radiation `raster` - Name of input net radiation raster map (W\code{/}m2). Path to a raster layer.
##' @param soil_heatflux `raster` - Name of input soil heat flux raster map (W\code{/}m2). Path to a raster layer.
##' @param air_temperature `raster` - Name of input air temperature raster map (K). Path to a raster layer.
##' @param atmospheric_pressure `raster` - Name of input atmospheric pressure raster map (millibars). Path to a raster layer.
##' @param priestley_taylor_coeff `number` - Priestley-Taylor coefficient. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param .z `boolean` - Set negative ETa to zero. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression. Original algorithm parameter name: -z.
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

grass7_i_evapo_pt <- function(net_radiation = qgisprocess:::qgis_default_value(), soil_heatflux = qgisprocess:::qgis_default_value(), air_temperature = qgisprocess:::qgis_default_value(), atmospheric_pressure = qgisprocess:::qgis_default_value(), priestley_taylor_coeff = qgisprocess:::qgis_default_value(), .z = qgisprocess:::qgis_default_value(), output = qgisprocess:::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess:::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass7:i.evapo.pt")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass7:i.evapo.pt", `net_radiation` = net_radiation, `soil_heatflux` = soil_heatflux, `air_temperature` = air_temperature, `atmospheric_pressure` = atmospheric_pressure, `priestley_taylor_coeff` = priestley_taylor_coeff, `-z` = .z, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass7:i.evapo.pt", `net_radiation` = net_radiation, `soil_heatflux` = soil_heatflux, `air_temperature` = air_temperature, `atmospheric_pressure` = atmospheric_pressure, `priestley_taylor_coeff` = priestley_taylor_coeff, `-z` = .z, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "output")
  }
}