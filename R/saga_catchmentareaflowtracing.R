##' QGIS Algorithm provided by SAGA Catchment area (flow tracing) (saga:catchmentareaflowtracing)
##'
##' @title QGIS algorithm Catchment area (flow tracing)
##'
##' @param ELEVATION `raster` - Elevation. Path to a raster layer.
##' @param FLOW_UNIT `enum`  of `("[0] Number of Cells", "[1] Cell Area")` - Flow Accumulation Units. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SINKROUTE `raster` - Sink Routes. Path to a raster layer.
##' @param WEIGHTS `raster` - Weights. Path to a raster layer.
##' @param ACCU_MATERIAL `raster` - Material for Accumulation. Path to a raster layer.
##' @param VAL_INPUT `raster` - Input for Mean over Catchment. Path to a raster layer.
##' @param ACCU_TARGET `raster` - Accumulation Target. Path to a raster layer.
##' @param STEP `number` - Step. A numeric value.
##' @param METHOD `enum`  of `("[0] Rho 8", "[1] Kinematic Routing Algorithm", "[2] DEMON")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param MINDQV `number` - DEMON - Min. DQV. A numeric value.
##' @param CORRECT `boolean` - Flow Correction. 1 for true/yes. 0 for false/no.
##' @param FLOW `rasterDestination` - Flow Accumulation. Path for new raster layer.
##' @param VAL_MEAN `rasterDestination` - Mean over Catchment. Path for new raster layer.
##' @param ACCU_TOTAL `rasterDestination` - Accumulated Material. Path for new raster layer.
##' @param ACCU_LEFT `rasterDestination` - Accumulated Material from left side. Path for new raster layer.
##' @param ACCU_RIGHT `rasterDestination` - Accumulated Material from right side. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * FLOW - outputRaster - Flow Accumulation
##' * VAL_MEAN - outputRaster - Mean over Catchment
##' * ACCU_TOTAL - outputRaster - Accumulated Material
##' * ACCU_LEFT - outputRaster - Accumulated Material from left side
##' * ACCU_RIGHT - outputRaster - Accumulated Material from right side
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_catchmentareaflowtracing <- function(ELEVATION = qgisprocess::qgis_default_value(), FLOW_UNIT = qgisprocess::qgis_default_value(), SINKROUTE = qgisprocess::qgis_default_value(), WEIGHTS = qgisprocess::qgis_default_value(), ACCU_MATERIAL = qgisprocess::qgis_default_value(), VAL_INPUT = qgisprocess::qgis_default_value(), ACCU_TARGET = qgisprocess::qgis_default_value(), STEP = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(), MINDQV = qgisprocess::qgis_default_value(), CORRECT = qgisprocess::qgis_default_value(), FLOW = qgisprocess::qgis_default_value(), VAL_MEAN = qgisprocess::qgis_default_value(), ACCU_TOTAL = qgisprocess::qgis_default_value(), ACCU_LEFT = qgisprocess::qgis_default_value(), ACCU_RIGHT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:catchmentareaflowtracing")
  output <- qgisprocess::qgis_run_algorithm("saga:catchmentareaflowtracing",`ELEVATION` = ELEVATION, `FLOW_UNIT` = FLOW_UNIT, `SINKROUTE` = SINKROUTE, `WEIGHTS` = WEIGHTS, `ACCU_MATERIAL` = ACCU_MATERIAL, `VAL_INPUT` = VAL_INPUT, `ACCU_TARGET` = ACCU_TARGET, `STEP` = STEP, `METHOD` = METHOD, `MINDQV` = MINDQV, `CORRECT` = CORRECT, `FLOW` = FLOW, `VAL_MEAN` = VAL_MEAN, `ACCU_TOTAL` = ACCU_TOTAL, `ACCU_LEFT` = ACCU_LEFT, `ACCU_RIGHT` = ACCU_RIGHT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "FLOW")
  }
}