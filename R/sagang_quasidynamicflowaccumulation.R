##' QGIS Algorithm provided by SAGA Next Gen Quasi-dynamic flow accumulation (sagang:quasidynamicflowaccumulation). ---------------- Arguments ----------------  DEM: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer FLOW_K: Manning-Strickler Coefficient (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer FLOW_K_DEFAULT: Default 	Default value:	20 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression FLOW_ACC: Flow Accumulation 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer FLOW: Flow Through 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer TIME_MEAN: Flow Travel Time 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer TIME_CONC: Flow Concentration 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer VELOCITY: Flow Velocity 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer TIME: Time 	Default value:	5 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression ROUTING: Flow Routing 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) D8 		- 1: (1) MFD 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' FLOW_DEPTH: Flow Depth 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) constant 		- 1: (1) dynamic 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' FLOW_CONST: Constant Flow Depth 	Default value:	10 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression RESET: Reset 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression RAIN: Rain 	Default value:	10 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Quasi-dynamic flow accumulation
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param FLOW_K `raster` - Manning-Strickler Coefficient. Path to a raster layer.
##' @param FLOW_K_DEFAULT `number` - Default. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param FLOW_ACC `rasterDestination` - Flow Accumulation. Path for new raster layer.
##' @param FLOW `rasterDestination` - Flow Through. Path for new raster layer.
##' @param TIME_MEAN `rasterDestination` - Flow Travel Time. Path for new raster layer.
##' @param TIME_CONC `rasterDestination` - Flow Concentration. Path for new raster layer.
##' @param VELOCITY `rasterDestination` - Flow Velocity. Path for new raster layer.
##' @param TIME `number` - Time. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ROUTING `enum`  of `("(0) D8", "(1) MFD")` - Flow Routing. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param FLOW_DEPTH `enum`  of `("(0) constant", "(1) dynamic")` - Flow Depth. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param FLOW_CONST `number` - Constant Flow Depth. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param RESET `boolean` - Reset. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param RAIN `number` - Rain. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * FLOW - outputRaster - Flow Through
##' * FLOW_ACC - outputRaster - Flow Accumulation
##' * TIME_CONC - outputRaster - Flow Concentration
##' * TIME_MEAN - outputRaster - Flow Travel Time
##' * VELOCITY - outputRaster - Flow Velocity
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_quasidynamicflowaccumulation <- function(DEM = qgisprocess:::qgis_default_value(), FLOW_K = qgisprocess:::qgis_default_value(), FLOW_K_DEFAULT = qgisprocess:::qgis_default_value(), FLOW_ACC = qgisprocess:::qgis_default_value(), FLOW = qgisprocess:::qgis_default_value(), TIME_MEAN = qgisprocess:::qgis_default_value(), TIME_CONC = qgisprocess:::qgis_default_value(), VELOCITY = qgisprocess:::qgis_default_value(), TIME = qgisprocess:::qgis_default_value(), ROUTING = qgisprocess:::qgis_default_value(), FLOW_DEPTH = qgisprocess:::qgis_default_value(), FLOW_CONST = qgisprocess:::qgis_default_value(), RESET = qgisprocess:::qgis_default_value(), RAIN = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:quasidynamicflowaccumulation")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:quasidynamicflowaccumulation", `DEM` = DEM, `FLOW_K` = FLOW_K, `FLOW_K_DEFAULT` = FLOW_K_DEFAULT, `FLOW_ACC` = FLOW_ACC, `FLOW` = FLOW, `TIME_MEAN` = TIME_MEAN, `TIME_CONC` = TIME_CONC, `VELOCITY` = VELOCITY, `TIME` = TIME, `ROUTING` = ROUTING, `FLOW_DEPTH` = FLOW_DEPTH, `FLOW_CONST` = FLOW_CONST, `RESET` = RESET, `RAIN` = RAIN,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:quasidynamicflowaccumulation", `DEM` = DEM, `FLOW_K` = FLOW_K, `FLOW_K_DEFAULT` = FLOW_K_DEFAULT, `FLOW_ACC` = FLOW_ACC, `FLOW` = FLOW, `TIME_MEAN` = TIME_MEAN, `TIME_CONC` = TIME_CONC, `VELOCITY` = VELOCITY, `TIME` = TIME, `ROUTING` = ROUTING, `FLOW_DEPTH` = FLOW_DEPTH, `FLOW_CONST` = FLOW_CONST, `RESET` = RESET, `RAIN` = RAIN,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "FLOW")
  }
}