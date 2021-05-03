##' QGIS Algorithm provided by SAGA Accumulation functions (saga:accumulationfunctions)
##'
##' @title QGIS algorithm Accumulation functions
##'
##' @param SURFACE `raster` - Surface. Path to a raster layer.
##' @param INPUT `raster` - Input. Path to a raster layer.
##' @param STATE_IN `raster` - State t. Path to a raster layer.
##' @param CONTROL `raster` - Operation Control. Path to a raster layer.
##' @param CTRL_LINEAR `raster` - Linear Flow Control Grid. Path to a raster layer.
##' @param FLUX `rasterDestination` - Flux. Path for new raster layer.
##' @param STATE_OUT `rasterDestination` - State t + 1. Path for new raster layer.
##' @param OPERATION `enum`  of `("[0] accuflux", "[1] accucapacityflux / state", "[2] accufractionflux / state", "[3] accuthresholdflux / state", "[4] accutriggerflux / state")` - Operation. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param LINEAR `boolean` - Switch to Linear Flow. 1 for true/yes. 0 for false/no.
##' @param THRES_LINEAR `number` - Threshold Linear Flow. A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * FLUX - outputRaster - Flux
##' * STATE_OUT - outputRaster - State t 
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_accumulationfunctions <- function(SURFACE = qgisprocess::qgis_default_value(), INPUT = qgisprocess::qgis_default_value(), STATE_IN = qgisprocess::qgis_default_value(), CONTROL = qgisprocess::qgis_default_value(), CTRL_LINEAR = qgisprocess::qgis_default_value(), FLUX = qgisprocess::qgis_default_value(), STATE_OUT = qgisprocess::qgis_default_value(), OPERATION = qgisprocess::qgis_default_value(), LINEAR = qgisprocess::qgis_default_value(), THRES_LINEAR = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:accumulationfunctions")
  output <- qgisprocess::qgis_run_algorithm("saga:accumulationfunctions",`SURFACE` = SURFACE, `INPUT` = INPUT, `STATE_IN` = STATE_IN, `CONTROL` = CONTROL, `CTRL_LINEAR` = CTRL_LINEAR, `FLUX` = FLUX, `STATE_OUT` = STATE_OUT, `OPERATION` = OPERATION, `LINEAR` = LINEAR, `THRES_LINEAR` = THRES_LINEAR,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "FLUX")
  }
}