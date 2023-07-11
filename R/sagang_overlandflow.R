##' QGIS Algorithm provided by SAGA Next Gen Overland flow (sagang:overlandflow). ---------------- Arguments ----------------  DEM: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer ROUGHNESS: Manning Roughness (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer ROUGHNESS_DEFAULT: Default 	Default value:	0.03 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression INTER_MAX: Interception Capacity (mm) (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer INTER_MAX_DEFAULT: Default 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression POND_MAX: Ponding Capacity (mm) (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer POND_MAX_DEFAULT: Default 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression INFIL_MAX: Infiltration Capacity (mm/h) (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer INFIL_MAX_DEFAULT: Default 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression INTERCEPT: Interception (mm) 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer PONDING: Ponding (mm) 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer INFILTRAT: Infiltration (mm) 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer FLOW: Flow (mm) 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer VELOCITY: Velocity (m/s) 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer PRECIP: Precipitation (mm/h) (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer PRECIP_DEFAULT: Default 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression ET_POT: Potential Evapotranspiration (mm/h) (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer ET_POT_DEFAULT: Default 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression RESET: Reset 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression TIME_STOP: Simulation Time (h) 	Default value:	6 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression TIME_STEP: Time Step Adjustment 	Default value:	0.5 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression TIME_UPDATE: Map Update Frequency (min) 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Overland flow
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param ROUGHNESS `raster` - Manning Roughness. Path to a raster layer.
##' @param ROUGHNESS_DEFAULT `number` - Default. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param INTER_MAX `raster` - Interception Capacity (mm). Path to a raster layer.
##' @param INTER_MAX_DEFAULT `number` - Default. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param POND_MAX `raster` - Ponding Capacity (mm). Path to a raster layer.
##' @param POND_MAX_DEFAULT `number` - Default. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param INFIL_MAX `raster` - Infiltration Capacity (mm\code{/}h). Path to a raster layer.
##' @param INFIL_MAX_DEFAULT `number` - Default. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param INTERCEPT `rasterDestination` - Interception (mm). Path for new raster layer.
##' @param PONDING `rasterDestination` - Ponding (mm). Path for new raster layer.
##' @param INFILTRAT `rasterDestination` - Infiltration (mm). Path for new raster layer.
##' @param FLOW `rasterDestination` - Flow (mm). Path for new raster layer.
##' @param VELOCITY `rasterDestination` - Velocity (m\code{/}s). Path for new raster layer.
##' @param PRECIP `raster` - Precipitation (mm\code{/}h). Path to a raster layer.
##' @param PRECIP_DEFAULT `number` - Default. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ET_POT `raster` - Potential Evapotranspiration (mm\code{/}h). Path to a raster layer.
##' @param ET_POT_DEFAULT `number` - Default. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param RESET `boolean` - Reset. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TIME_STOP `number` - Simulation Time (h). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TIME_STEP `number` - Time Step Adjustment. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TIME_UPDATE `number` - Map Update Frequency (min). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * FLOW - outputRaster - Flow (mm)
##' * INFILTRAT - outputRaster - Infiltration (mm)
##' * INTERCEPT - outputRaster - Interception (mm)
##' * PONDING - outputRaster - Ponding (mm)
##' * VELOCITY - outputRaster - Velocity (m\code{/}s)
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_overlandflow <- function(DEM = qgisprocess:::qgis_default_value(), ROUGHNESS = qgisprocess:::qgis_default_value(), ROUGHNESS_DEFAULT = qgisprocess:::qgis_default_value(), INTER_MAX = qgisprocess:::qgis_default_value(), INTER_MAX_DEFAULT = qgisprocess:::qgis_default_value(), POND_MAX = qgisprocess:::qgis_default_value(), POND_MAX_DEFAULT = qgisprocess:::qgis_default_value(), INFIL_MAX = qgisprocess:::qgis_default_value(), INFIL_MAX_DEFAULT = qgisprocess:::qgis_default_value(), INTERCEPT = qgisprocess:::qgis_default_value(), PONDING = qgisprocess:::qgis_default_value(), INFILTRAT = qgisprocess:::qgis_default_value(), FLOW = qgisprocess:::qgis_default_value(), VELOCITY = qgisprocess:::qgis_default_value(), PRECIP = qgisprocess:::qgis_default_value(), PRECIP_DEFAULT = qgisprocess:::qgis_default_value(), ET_POT = qgisprocess:::qgis_default_value(), ET_POT_DEFAULT = qgisprocess:::qgis_default_value(), RESET = qgisprocess:::qgis_default_value(), TIME_STOP = qgisprocess:::qgis_default_value(), TIME_STEP = qgisprocess:::qgis_default_value(), TIME_UPDATE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:overlandflow")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:overlandflow", `DEM` = DEM, `ROUGHNESS` = ROUGHNESS, `ROUGHNESS_DEFAULT` = ROUGHNESS_DEFAULT, `INTER_MAX` = INTER_MAX, `INTER_MAX_DEFAULT` = INTER_MAX_DEFAULT, `POND_MAX` = POND_MAX, `POND_MAX_DEFAULT` = POND_MAX_DEFAULT, `INFIL_MAX` = INFIL_MAX, `INFIL_MAX_DEFAULT` = INFIL_MAX_DEFAULT, `INTERCEPT` = INTERCEPT, `PONDING` = PONDING, `INFILTRAT` = INFILTRAT, `FLOW` = FLOW, `VELOCITY` = VELOCITY, `PRECIP` = PRECIP, `PRECIP_DEFAULT` = PRECIP_DEFAULT, `ET_POT` = ET_POT, `ET_POT_DEFAULT` = ET_POT_DEFAULT, `RESET` = RESET, `TIME_STOP` = TIME_STOP, `TIME_STEP` = TIME_STEP, `TIME_UPDATE` = TIME_UPDATE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:overlandflow", `DEM` = DEM, `ROUGHNESS` = ROUGHNESS, `ROUGHNESS_DEFAULT` = ROUGHNESS_DEFAULT, `INTER_MAX` = INTER_MAX, `INTER_MAX_DEFAULT` = INTER_MAX_DEFAULT, `POND_MAX` = POND_MAX, `POND_MAX_DEFAULT` = POND_MAX_DEFAULT, `INFIL_MAX` = INFIL_MAX, `INFIL_MAX_DEFAULT` = INFIL_MAX_DEFAULT, `INTERCEPT` = INTERCEPT, `PONDING` = PONDING, `INFILTRAT` = INFILTRAT, `FLOW` = FLOW, `VELOCITY` = VELOCITY, `PRECIP` = PRECIP, `PRECIP_DEFAULT` = PRECIP_DEFAULT, `ET_POT` = ET_POT, `ET_POT_DEFAULT` = ET_POT_DEFAULT, `RESET` = RESET, `TIME_STOP` = TIME_STOP, `TIME_STEP` = TIME_STEP, `TIME_UPDATE` = TIME_UPDATE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "FLOW")
  }
}