##' QGIS Algorithm provided by SAGA Next Gen Accumulation functions (sagang:accumulationfunctions). ---------------- Arguments ----------------  SURFACE: Surface 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer INPUT: Input 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer STATE_IN: State t (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer CONTROL: Operation Control (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer CTRL_LINEAR: Linear Flow Control Grid (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer FLUX: Flux 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer STATE_OUT: State t + 1 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer OPERATION: Operation 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) accuflux 		- 1: (1) accucapacityflux / state 		- 2: (2) accufractionflux / state 		- 3: (3) accuthresholdflux / state 		- 4: (4) accutriggerflux / state 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' LINEAR: Switch to Linear Flow 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression THRES_LINEAR: Threshold Linear Flow 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Accumulation functions
##'
##' @param SURFACE `raster` - Surface. Path to a raster layer.
##' @param INPUT `raster` - Input. Path to a raster layer.
##' @param STATE_IN `raster` - State t. Path to a raster layer.
##' @param CONTROL `raster` - Operation Control. Path to a raster layer.
##' @param CTRL_LINEAR `raster` - Linear Flow Control Grid. Path to a raster layer.
##' @param FLUX `rasterDestination` - Flux. Path for new raster layer.
##' @param STATE_OUT `rasterDestination` - State t + 1. Path for new raster layer.
##' @param OPERATION `enum`  of `("(0) accuflux", "(1) accucapacityflux / state", "(2) accufractionflux / state", "(3) accuthresholdflux / state", "(4) accutriggerflux / state")` - Operation. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param LINEAR `boolean` - Switch to Linear Flow. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param THRES_LINEAR `number` - Threshold Linear Flow. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * FLUX - outputRaster - Flux
##' * STATE_OUT - outputRaster - State t + 1
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_accumulationfunctions <- function(SURFACE = qgisprocess:::qgis_default_value(), INPUT = qgisprocess:::qgis_default_value(), STATE_IN = qgisprocess:::qgis_default_value(), CONTROL = qgisprocess:::qgis_default_value(), CTRL_LINEAR = qgisprocess:::qgis_default_value(), FLUX = qgisprocess:::qgis_default_value(), STATE_OUT = qgisprocess:::qgis_default_value(), OPERATION = qgisprocess:::qgis_default_value(), LINEAR = qgisprocess:::qgis_default_value(), THRES_LINEAR = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:accumulationfunctions")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:accumulationfunctions", `SURFACE` = SURFACE, `INPUT` = INPUT, `STATE_IN` = STATE_IN, `CONTROL` = CONTROL, `CTRL_LINEAR` = CTRL_LINEAR, `FLUX` = FLUX, `STATE_OUT` = STATE_OUT, `OPERATION` = OPERATION, `LINEAR` = LINEAR, `THRES_LINEAR` = THRES_LINEAR,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:accumulationfunctions", `SURFACE` = SURFACE, `INPUT` = INPUT, `STATE_IN` = STATE_IN, `CONTROL` = CONTROL, `CTRL_LINEAR` = CTRL_LINEAR, `FLUX` = FLUX, `STATE_OUT` = STATE_OUT, `OPERATION` = OPERATION, `LINEAR` = LINEAR, `THRES_LINEAR` = THRES_LINEAR,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "FLUX")
  }
}