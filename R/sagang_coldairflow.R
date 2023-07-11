##' QGIS Algorithm provided by SAGA Next Gen Cold air flow (sagang:coldairflow). ---------------- Arguments ----------------  DEM: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer PRODUCTION: Production (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer PRODUCTION_DEFAULT: Default 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression FRICTION: Surface Friction Coefficient (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer FRICTION_DEFAULT: Default 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression AIR: Cold Air Height 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer VELOCITY: Velocity 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer RESET: Reset 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression TIME_STOP: Simulation Time (h) 	Default value:	6 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression TIME_UPDATE: Map Update Frequency (min) 	Default value:	10 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression EDGE: Edge 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) closed 		- 1: (1) open 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' DELAY: Time Step Adjustment 	Default value:	0.5 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression T_AIR: Surrounding Air Temperature 	Default value:	15 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression T_AIR_COLD: Cold Air Temperature 	Default value:	5 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Cold air flow
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param PRODUCTION `raster` - Production. Path to a raster layer.
##' @param PRODUCTION_DEFAULT `number` - Default. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param FRICTION `raster` - Surface Friction Coefficient. Path to a raster layer.
##' @param FRICTION_DEFAULT `number` - Default. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param AIR `rasterDestination` - Cold Air Height. Path for new raster layer.
##' @param VELOCITY `rasterDestination` - Velocity. Path for new raster layer.
##' @param RESET `boolean` - Reset. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TIME_STOP `number` - Simulation Time (h). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TIME_UPDATE `number` - Map Update Frequency (min). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param EDGE `enum`  of `("(0) closed", "(1) open")` - Edge. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DELAY `number` - Time Step Adjustment. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param T_AIR `number` - Surrounding Air Temperature. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param T_AIR_COLD `number` - Cold Air Temperature. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * AIR - outputRaster - Cold Air Height
##' * VELOCITY - outputRaster - Velocity
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_coldairflow <- function(DEM = qgisprocess:::qgis_default_value(), PRODUCTION = qgisprocess:::qgis_default_value(), PRODUCTION_DEFAULT = qgisprocess:::qgis_default_value(), FRICTION = qgisprocess:::qgis_default_value(), FRICTION_DEFAULT = qgisprocess:::qgis_default_value(), AIR = qgisprocess:::qgis_default_value(), VELOCITY = qgisprocess:::qgis_default_value(), RESET = qgisprocess:::qgis_default_value(), TIME_STOP = qgisprocess:::qgis_default_value(), TIME_UPDATE = qgisprocess:::qgis_default_value(), EDGE = qgisprocess:::qgis_default_value(), DELAY = qgisprocess:::qgis_default_value(), T_AIR = qgisprocess:::qgis_default_value(), T_AIR_COLD = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:coldairflow")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:coldairflow", `DEM` = DEM, `PRODUCTION` = PRODUCTION, `PRODUCTION_DEFAULT` = PRODUCTION_DEFAULT, `FRICTION` = FRICTION, `FRICTION_DEFAULT` = FRICTION_DEFAULT, `AIR` = AIR, `VELOCITY` = VELOCITY, `RESET` = RESET, `TIME_STOP` = TIME_STOP, `TIME_UPDATE` = TIME_UPDATE, `EDGE` = EDGE, `DELAY` = DELAY, `T_AIR` = T_AIR, `T_AIR_COLD` = T_AIR_COLD,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:coldairflow", `DEM` = DEM, `PRODUCTION` = PRODUCTION, `PRODUCTION_DEFAULT` = PRODUCTION_DEFAULT, `FRICTION` = FRICTION, `FRICTION_DEFAULT` = FRICTION_DEFAULT, `AIR` = AIR, `VELOCITY` = VELOCITY, `RESET` = RESET, `TIME_STOP` = TIME_STOP, `TIME_UPDATE` = TIME_UPDATE, `EDGE` = EDGE, `DELAY` = DELAY, `T_AIR` = T_AIR, `T_AIR_COLD` = T_AIR_COLD,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "AIR")
  }
}