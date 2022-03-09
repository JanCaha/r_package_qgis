##' QGIS Algorithm provided by SAGA Overland flow - kinematic wave d8 (saga:overlandflowkinematicwaved8)
##'
##' @title QGIS algorithm Overland flow - kinematic wave d8
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param GAUGES `source` - Gauges. Path to a vector layer.
##' @param TIME_SPAN `number` - Simulation Time (h). A numeric value.
##' @param TIME_STEP `number` - Simulation Time Step (h). A numeric value.
##' @param ROUGHNESS `number` - Manning's Roughness. A numeric value.
##' @param NEWTON_MAXITER `number` - Max. Iterations. A numeric value.
##' @param NEWTON_EPSILON `number` - Epsilon. A numeric value.
##' @param PRECIP `enum`  of `("[0] Homogeneous", "[1] Above Elevation", "[2] Left Half")` - Precipitation. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param THRESHOLD `number` - Threshold Elevation. A numeric value.
##' @param FLOW `rasterDestination` - Runoff. Path for new raster layer.
##' @param GAUGES_FLOW `vectorDestination` - Flow at Gauges. Path for new vector layer.
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
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_overlandflowkinematicwaved8 <- function(DEM = qgisprocess::qgis_default_value(), GAUGES = qgisprocess::qgis_default_value(), TIME_SPAN = qgisprocess::qgis_default_value(), TIME_STEP = qgisprocess::qgis_default_value(), ROUGHNESS = qgisprocess::qgis_default_value(), NEWTON_MAXITER = qgisprocess::qgis_default_value(), NEWTON_EPSILON = qgisprocess::qgis_default_value(), PRECIP = qgisprocess::qgis_default_value(), THRESHOLD = qgisprocess::qgis_default_value(), FLOW = qgisprocess::qgis_default_value(), GAUGES_FLOW = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:overlandflowkinematicwaved8")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:overlandflowkinematicwaved8", `DEM` = DEM, `GAUGES` = GAUGES, `TIME_SPAN` = TIME_SPAN, `TIME_STEP` = TIME_STEP, `ROUGHNESS` = ROUGHNESS, `NEWTON_MAXITER` = NEWTON_MAXITER, `NEWTON_EPSILON` = NEWTON_EPSILON, `PRECIP` = PRECIP, `THRESHOLD` = THRESHOLD, `FLOW` = FLOW, `GAUGES_FLOW` = GAUGES_FLOW,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:overlandflowkinematicwaved8", `DEM` = DEM, `GAUGES` = GAUGES, `TIME_SPAN` = TIME_SPAN, `TIME_STEP` = TIME_STEP, `ROUGHNESS` = ROUGHNESS, `NEWTON_MAXITER` = NEWTON_MAXITER, `NEWTON_EPSILON` = NEWTON_EPSILON, `PRECIP` = PRECIP, `THRESHOLD` = THRESHOLD, `FLOW` = FLOW, `GAUGES_FLOW` = GAUGES_FLOW,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "FLOW")
  }
}