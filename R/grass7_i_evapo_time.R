##' QGIS Algorithm provided by GRASS i.evapo.time (grass7:i.evapo.time)
##'
##' @title QGIS algorithm i.evapo.time
##'
##' @param eta `multilayer` - Names of satellite ETa raster maps (mm/d or cm/d). .
##' @param eta_doy `multilayer` - Names of satellite ETa Day of Year (DOY) raster maps (0-400) (-). .
##' @param eto `multilayer` - Names of meteorological station ETo raster maps (0-400) (mm/d or cm/d). .
##' @param eto_doy_min `number` - Value of DOY for ETo first day. A numeric value.
##' @param start_period `number` - Value of DOY for the first day of the period studied. A numeric value.
##' @param end_period `number` - Value of DOY for the last day of the period studied. A numeric value.
##' @param output `rasterDestination` - Temporal integration. Path for new raster layer.
##' @param GRASS_REGION_PARAMETER `extent` - GRASS GIS 7 region extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param GRASS_REGION_CELLSIZE_PARAMETER `number` - GRASS GIS 7 region cellsize (leave 0 for default). A numeric value.
##' @param GRASS_RASTER_FORMAT_OPT `string` - Output Rasters format options (createopt). String value.
##' @param GRASS_RASTER_FORMAT_META `string` - Output Rasters format metadata options (metaopt). String value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * output - outputRaster - Temporal integration
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

grass7_i_evapo_time <- function(eta = qgisprocess:::qgis_default_value(), eta_doy = qgisprocess:::qgis_default_value(), eto = qgisprocess:::qgis_default_value(), eto_doy_min = qgisprocess:::qgis_default_value(), start_period = qgisprocess:::qgis_default_value(), end_period = qgisprocess:::qgis_default_value(), output = qgisprocess:::qgis_default_value(), GRASS_REGION_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_REGION_CELLSIZE_PARAMETER = qgisprocess:::qgis_default_value(), GRASS_RASTER_FORMAT_OPT = qgisprocess:::qgis_default_value(), GRASS_RASTER_FORMAT_META = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("grass7:i.evapo.time")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("grass7:i.evapo.time", `eta` = eta, `eta_doy` = eta_doy, `eto` = eto, `eto_doy_min` = eto_doy_min, `start_period` = start_period, `end_period` = end_period, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("grass7:i.evapo.time", `eta` = eta, `eta_doy` = eta_doy, `eto` = eto, `eto_doy_min` = eto_doy_min, `start_period` = start_period, `end_period` = end_period, `output` = output, `GRASS_REGION_PARAMETER` = GRASS_REGION_PARAMETER, `GRASS_REGION_CELLSIZE_PARAMETER` = GRASS_REGION_CELLSIZE_PARAMETER, `GRASS_RASTER_FORMAT_OPT` = GRASS_RASTER_FORMAT_OPT, `GRASS_RASTER_FORMAT_META` = GRASS_RASTER_FORMAT_META,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "output")
  }
}