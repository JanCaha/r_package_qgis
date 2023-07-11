##' QGIS Algorithm provided by SAGA Next Gen Catchment area (flow tracing) (sagang:catchmentareaflowtracing). ---------------- Arguments ----------------  ELEVATION: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer SINKROUTE: Sink Routes (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer WEIGHTS: Weights (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer FLOW: Flow Accumulation 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer VAL_INPUT: Input for Mean over Catchment (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer VAL_MEAN: Mean over Catchment 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer ACCU_MATERIAL: Material for Accumulation (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer ACCU_TARGET: Accumulation Target 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer ACCU_TOTAL: Accumulated Material 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer ACCU_LEFT: Accumulated Material (Left Side) 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer ACCU_RIGHT: Accumulated Material (Right Side) 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer STEP: Step 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression FLOW_UNIT: Flow Accumulation Unit 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) number of cells 		- 1: (1) cell area 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' METHOD: m_Method 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) Rho 8 		- 1: (1) Kinematic Routing Algorithm 		- 2: (2) DEMON 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' CORRECT: Flow Correction 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression MINDQV: DEMON - Min. DQV 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Catchment area (flow tracing)
##'
##' @param ELEVATION `raster` - Elevation. Path to a raster layer.
##' @param SINKROUTE `raster` - Sink Routes. Path to a raster layer.
##' @param WEIGHTS `raster` - Weights. Path to a raster layer.
##' @param FLOW `rasterDestination` - Flow Accumulation. Path for new raster layer.
##' @param VAL_INPUT `raster` - Input for Mean over Catchment. Path to a raster layer.
##' @param VAL_MEAN `rasterDestination` - Mean over Catchment. Path for new raster layer.
##' @param ACCU_MATERIAL `raster` - Material for Accumulation. Path to a raster layer.
##' @param ACCU_TARGET `raster` - Accumulation Target. Path to a raster layer.
##' @param ACCU_TOTAL `rasterDestination` - Accumulated Material. Path for new raster layer.
##' @param ACCU_LEFT `rasterDestination` - Accumulated Material (Left Side). Path for new raster layer.
##' @param ACCU_RIGHT `rasterDestination` - Accumulated Material (Right Side). Path for new raster layer.
##' @param STEP `number` - Step. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param FLOW_UNIT `enum`  of `("(0) number of cells", "(1) cell area")` - Flow Accumulation Unit. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param METHOD `enum`  of `("(0) Rho 8", "(1) Kinematic Routing Algorithm", "(2) DEMON")` - m_Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param CORRECT `boolean` - Flow Correction. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param MINDQV `number` - DEMON - Min. DQV. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * ACCU_LEFT - outputRaster - Accumulated Material (Left Side)
##' * ACCU_RIGHT - outputRaster - Accumulated Material (Right Side)
##' * ACCU_TOTAL - outputRaster - Accumulated Material
##' * FLOW - outputRaster - Flow Accumulation
##' * VAL_MEAN - outputRaster - Mean over Catchment
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_catchmentareaflowtracing <- function(ELEVATION = qgisprocess:::qgis_default_value(), SINKROUTE = qgisprocess:::qgis_default_value(), WEIGHTS = qgisprocess:::qgis_default_value(), FLOW = qgisprocess:::qgis_default_value(), VAL_INPUT = qgisprocess:::qgis_default_value(), VAL_MEAN = qgisprocess:::qgis_default_value(), ACCU_MATERIAL = qgisprocess:::qgis_default_value(), ACCU_TARGET = qgisprocess:::qgis_default_value(), ACCU_TOTAL = qgisprocess:::qgis_default_value(), ACCU_LEFT = qgisprocess:::qgis_default_value(), ACCU_RIGHT = qgisprocess:::qgis_default_value(), STEP = qgisprocess:::qgis_default_value(), FLOW_UNIT = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), CORRECT = qgisprocess:::qgis_default_value(), MINDQV = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:catchmentareaflowtracing")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:catchmentareaflowtracing", `ELEVATION` = ELEVATION, `SINKROUTE` = SINKROUTE, `WEIGHTS` = WEIGHTS, `FLOW` = FLOW, `VAL_INPUT` = VAL_INPUT, `VAL_MEAN` = VAL_MEAN, `ACCU_MATERIAL` = ACCU_MATERIAL, `ACCU_TARGET` = ACCU_TARGET, `ACCU_TOTAL` = ACCU_TOTAL, `ACCU_LEFT` = ACCU_LEFT, `ACCU_RIGHT` = ACCU_RIGHT, `STEP` = STEP, `FLOW_UNIT` = FLOW_UNIT, `METHOD` = METHOD, `CORRECT` = CORRECT, `MINDQV` = MINDQV,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:catchmentareaflowtracing", `ELEVATION` = ELEVATION, `SINKROUTE` = SINKROUTE, `WEIGHTS` = WEIGHTS, `FLOW` = FLOW, `VAL_INPUT` = VAL_INPUT, `VAL_MEAN` = VAL_MEAN, `ACCU_MATERIAL` = ACCU_MATERIAL, `ACCU_TARGET` = ACCU_TARGET, `ACCU_TOTAL` = ACCU_TOTAL, `ACCU_LEFT` = ACCU_LEFT, `ACCU_RIGHT` = ACCU_RIGHT, `STEP` = STEP, `FLOW_UNIT` = FLOW_UNIT, `METHOD` = METHOD, `CORRECT` = CORRECT, `MINDQV` = MINDQV,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "ACCU_LEFT")
  }
}