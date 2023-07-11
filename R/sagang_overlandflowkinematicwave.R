##' QGIS Algorithm provided by SAGA Next Gen Overland flow (kinematic wave) (sagang:overlandflowkinematicwave). ---------------- Arguments ----------------  DEM: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer ROUGHNESS: Manning Roughness (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer ROUGHNESS_DEFAULT: Default 	Default value:	0.03 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression FLOW: Runoff 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer GAUGES_FLOW: Flow at Gauges 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer GAUGES: Gauges (optional) 	Argument type:	source 	Acceptable values: 		- Path to a vector layer TIME_SPAN: Simulation Time (h) 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression TIME_STEP: Simulation Time Step (min) 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression TIME_UPDATE: Map Update Frequency (min) 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression MAXITER: Maximum Iterations 	Default value:	100 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression EPSILON: Epsilon 	Default value:	0.0001 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression ROUTING: Flow Routing 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) Deterministic 8 		- 1: (1) Multiple Flow Direction 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' DYNAMIC: Dynamic Water Surface 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression FLOW_RESET: Reset 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression P_RATE: Precipitation (mm) 	Default value:	10 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression P_DISTRIB: Precipitation 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) Homogenous 		- 1: (1) Above Elevation 		- 2: (2) Left Half 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' P_THRESHOLD: Above Elevation 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Overland flow (kinematic wave)
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param ROUGHNESS `raster` - Manning Roughness. Path to a raster layer.
##' @param ROUGHNESS_DEFAULT `number` - Default. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param FLOW `rasterDestination` - Runoff. Path for new raster layer.
##' @param GAUGES_FLOW `vectorDestination` - Flow at Gauges. Path for new vector layer.
##' @param GAUGES `source` - Gauges. Path to a vector layer.
##' @param TIME_SPAN `number` - Simulation Time (h). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TIME_STEP `number` - Simulation Time Step (min). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TIME_UPDATE `number` - Map Update Frequency (min). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param MAXITER `number` - Maximum Iterations. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param EPSILON `number` - Epsilon. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ROUTING `enum`  of `("(0) Deterministic 8", "(1) Multiple Flow Direction")` - Flow Routing. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DYNAMIC `boolean` - Dynamic Water Surface. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param FLOW_RESET `boolean` - Reset. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param P_RATE `number` - Precipitation (mm). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param P_DISTRIB `enum`  of `("(0) Homogenous", "(1) Above Elevation", "(2) Left Half")` - Precipitation. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param P_THRESHOLD `number` - Above Elevation. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * FLOW - outputRaster - Runoff
##' * GAUGES_FLOW - outputVector - Flow at Gauges
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_overlandflowkinematicwave <- function(DEM = qgisprocess:::qgis_default_value(), ROUGHNESS = qgisprocess:::qgis_default_value(), ROUGHNESS_DEFAULT = qgisprocess:::qgis_default_value(), FLOW = qgisprocess:::qgis_default_value(), GAUGES_FLOW = qgisprocess:::qgis_default_value(), GAUGES = qgisprocess:::qgis_default_value(), TIME_SPAN = qgisprocess:::qgis_default_value(), TIME_STEP = qgisprocess:::qgis_default_value(), TIME_UPDATE = qgisprocess:::qgis_default_value(), MAXITER = qgisprocess:::qgis_default_value(), EPSILON = qgisprocess:::qgis_default_value(), ROUTING = qgisprocess:::qgis_default_value(), DYNAMIC = qgisprocess:::qgis_default_value(), FLOW_RESET = qgisprocess:::qgis_default_value(), P_RATE = qgisprocess:::qgis_default_value(), P_DISTRIB = qgisprocess:::qgis_default_value(), P_THRESHOLD = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:overlandflowkinematicwave")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:overlandflowkinematicwave", `DEM` = DEM, `ROUGHNESS` = ROUGHNESS, `ROUGHNESS_DEFAULT` = ROUGHNESS_DEFAULT, `FLOW` = FLOW, `GAUGES_FLOW` = GAUGES_FLOW, `GAUGES` = GAUGES, `TIME_SPAN` = TIME_SPAN, `TIME_STEP` = TIME_STEP, `TIME_UPDATE` = TIME_UPDATE, `MAXITER` = MAXITER, `EPSILON` = EPSILON, `ROUTING` = ROUTING, `DYNAMIC` = DYNAMIC, `FLOW_RESET` = FLOW_RESET, `P_RATE` = P_RATE, `P_DISTRIB` = P_DISTRIB, `P_THRESHOLD` = P_THRESHOLD,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:overlandflowkinematicwave", `DEM` = DEM, `ROUGHNESS` = ROUGHNESS, `ROUGHNESS_DEFAULT` = ROUGHNESS_DEFAULT, `FLOW` = FLOW, `GAUGES_FLOW` = GAUGES_FLOW, `GAUGES` = GAUGES, `TIME_SPAN` = TIME_SPAN, `TIME_STEP` = TIME_STEP, `TIME_UPDATE` = TIME_UPDATE, `MAXITER` = MAXITER, `EPSILON` = EPSILON, `ROUTING` = ROUTING, `DYNAMIC` = DYNAMIC, `FLOW_RESET` = FLOW_RESET, `P_RATE` = P_RATE, `P_DISTRIB` = P_DISTRIB, `P_THRESHOLD` = P_THRESHOLD,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "FLOW")
  }
}