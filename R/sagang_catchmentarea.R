##' QGIS Algorithm provided by SAGA Next Gen Catchment area (sagang:catchmentarea). ---------------- Arguments ----------------  ELEVATION: Elevation 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer SINKROUTE: Sink Routes (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer WEIGHTS: Weights (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer FLOW: Flow Accumulation 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer VAL_INPUT: Input for Mean over Catchment (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer VAL_MEAN: Mean over Catchment 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer ACCU_MATERIAL: Material for Accumulation (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer ACCU_TARGET: Accumulation Target 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer ACCU_TOTAL: Accumulated Material 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer ACCU_LEFT: Accumulated Material (Left Side) 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer ACCU_RIGHT: Accumulated Material (Right Side) 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer STEP: Step 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression FLOW_UNIT: Flow Accumulation Unit 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) number of cells 		- 1: (1) cell area 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' FLOW_LENGTH: Flow Path Length 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer LINEAR_VAL: Linear Flow Threshold Grid (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer LINEAR_DIR: Channel Direction (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer WEIGHT_LOSS: Loss through Negative Weights 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer METHOD: Method 	Default value:	4 	Argument type:	enum 	Available values: 		- 0: (0) Deterministic 8 		- 1: (1) Rho 8 		- 2: (2) Braunschweiger Reliefmodell 		- 3: (3) Deterministic Infinity 		- 4: (4) Multiple Flow Direction 		- 5: (5) Multiple Triangular Flow Directon 		- 6: (6) Multiple Maximum Downslope Gradient Based Flow Directon 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' LINEAR_DO: Thresholded Linear Flow 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression LINEAR_MIN: Linear Flow Threshold 	Default value:	500 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression CONVERGENCE: Convergence 	Default value:	1.1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression NO_NEGATIVES: Prevent Negative Flow Accumulation 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Catchment area
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
##' @param FLOW_LENGTH `rasterDestination` - Flow Path Length. Path for new raster layer.
##' @param LINEAR_VAL `raster` - Linear Flow Threshold Grid. Path to a raster layer.
##' @param LINEAR_DIR `raster` - Channel Direction. Path to a raster layer.
##' @param WEIGHT_LOSS `rasterDestination` - Loss through Negative Weights. Path for new raster layer.
##' @param METHOD `enum`  of `("(0) Deterministic 8", "(1) Rho 8", "(2) Braunschweiger Reliefmodell", "(3) Deterministic Infinity", "(4) Multiple Flow Direction", "(5) Multiple Triangular Flow Directon", "(6) Multiple Maximum Downslope Gradient Based Flow Directon")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param LINEAR_DO `boolean` - Thresholded Linear Flow. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param LINEAR_MIN `number` - Linear Flow Threshold. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param CONVERGENCE `number` - Convergence. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param NO_NEGATIVES `boolean` - Prevent Negative Flow Accumulation. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
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
##' * FLOW_LENGTH - outputRaster - Flow Path Length
##' * VAL_MEAN - outputRaster - Mean over Catchment
##' * WEIGHT_LOSS - outputRaster - Loss through Negative Weights
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_catchmentarea <- function(ELEVATION = qgisprocess:::qgis_default_value(), SINKROUTE = qgisprocess:::qgis_default_value(), WEIGHTS = qgisprocess:::qgis_default_value(), FLOW = qgisprocess:::qgis_default_value(), VAL_INPUT = qgisprocess:::qgis_default_value(), VAL_MEAN = qgisprocess:::qgis_default_value(), ACCU_MATERIAL = qgisprocess:::qgis_default_value(), ACCU_TARGET = qgisprocess:::qgis_default_value(), ACCU_TOTAL = qgisprocess:::qgis_default_value(), ACCU_LEFT = qgisprocess:::qgis_default_value(), ACCU_RIGHT = qgisprocess:::qgis_default_value(), STEP = qgisprocess:::qgis_default_value(), FLOW_UNIT = qgisprocess:::qgis_default_value(), FLOW_LENGTH = qgisprocess:::qgis_default_value(), LINEAR_VAL = qgisprocess:::qgis_default_value(), LINEAR_DIR = qgisprocess:::qgis_default_value(), WEIGHT_LOSS = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), LINEAR_DO = qgisprocess:::qgis_default_value(), LINEAR_MIN = qgisprocess:::qgis_default_value(), CONVERGENCE = qgisprocess:::qgis_default_value(), NO_NEGATIVES = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:catchmentarea")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:catchmentarea", `ELEVATION` = ELEVATION, `SINKROUTE` = SINKROUTE, `WEIGHTS` = WEIGHTS, `FLOW` = FLOW, `VAL_INPUT` = VAL_INPUT, `VAL_MEAN` = VAL_MEAN, `ACCU_MATERIAL` = ACCU_MATERIAL, `ACCU_TARGET` = ACCU_TARGET, `ACCU_TOTAL` = ACCU_TOTAL, `ACCU_LEFT` = ACCU_LEFT, `ACCU_RIGHT` = ACCU_RIGHT, `STEP` = STEP, `FLOW_UNIT` = FLOW_UNIT, `FLOW_LENGTH` = FLOW_LENGTH, `LINEAR_VAL` = LINEAR_VAL, `LINEAR_DIR` = LINEAR_DIR, `WEIGHT_LOSS` = WEIGHT_LOSS, `METHOD` = METHOD, `LINEAR_DO` = LINEAR_DO, `LINEAR_MIN` = LINEAR_MIN, `CONVERGENCE` = CONVERGENCE, `NO_NEGATIVES` = NO_NEGATIVES,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:catchmentarea", `ELEVATION` = ELEVATION, `SINKROUTE` = SINKROUTE, `WEIGHTS` = WEIGHTS, `FLOW` = FLOW, `VAL_INPUT` = VAL_INPUT, `VAL_MEAN` = VAL_MEAN, `ACCU_MATERIAL` = ACCU_MATERIAL, `ACCU_TARGET` = ACCU_TARGET, `ACCU_TOTAL` = ACCU_TOTAL, `ACCU_LEFT` = ACCU_LEFT, `ACCU_RIGHT` = ACCU_RIGHT, `STEP` = STEP, `FLOW_UNIT` = FLOW_UNIT, `FLOW_LENGTH` = FLOW_LENGTH, `LINEAR_VAL` = LINEAR_VAL, `LINEAR_DIR` = LINEAR_DIR, `WEIGHT_LOSS` = WEIGHT_LOSS, `METHOD` = METHOD, `LINEAR_DO` = LINEAR_DO, `LINEAR_MIN` = LINEAR_MIN, `CONVERGENCE` = CONVERGENCE, `NO_NEGATIVES` = NO_NEGATIVES,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "ACCU_LEFT")
  }
}