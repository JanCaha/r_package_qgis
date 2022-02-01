##' QGIS Algorithm provided by SAGA Catchment area (recursive) (saga:catchmentarearecursive)
##'
##' @title QGIS algorithm Catchment area (recursive)
##'
##' @param ELEVATION `raster` - Elevation. Path to a raster layer.
##' @param FLOW_UNIT `enum`  of `("[0] Number of Cells", "[1] Cell Area")` - Flow Accumulation Units. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SINKROUTE `raster` - Sink Routes. Path to a raster layer.
##' @param WEIGHTS `raster` - Weights. Path to a raster layer.
##' @param ACCU_MATERIAL `raster` - Material for Accumulation. Path to a raster layer.
##' @param VAL_INPUT `raster` - Input for Mean over Catchment. Path to a raster layer.
##' @param ACCU_TARGET `raster` - Accumulation Target. Path to a raster layer.
##' @param STEP `number` - Step. A numeric value.
##' @param TARGETS `raster` - Target Areas. Path to a raster layer.
##' @param METHOD `enum`  of `("[0] Deterministic 8", "[1] Rho 8", "[2] Deterministic Infinity", "[3] Multiple Flow Direction")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param CONVERGENCE `number` - Convergence. A numeric value.
##' @param NO_NEGATIVES `boolean` - Prevent Negative Flow Accumulation. 1 for true/yes. 0 for false/no.
##' @param FLOW `rasterDestination` - Catchment Area. Path for new raster layer.
##' @param VAL_MEAN `rasterDestination` - Mean over Catchment. Path for new raster layer.
##' @param ACCU_TOTAL `rasterDestination` - Accumulated Material. Path for new raster layer.
##' @param ACCU_LEFT `rasterDestination` - Accumulated Material from left side. Path for new raster layer.
##' @param ACCU_RIGHT `rasterDestination` - Accumulated Material from right side. Path for new raster layer.
##' @param FLOW_LENGTH `rasterDestination` - Flow Path Length. Path for new raster layer.
##' @param WEIGHT_LOSS `rasterDestination` - Loss through Negative Weights. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * FLOW - outputRaster - Catchment Area
##' * VAL_MEAN - outputRaster - Mean over Catchment
##' * ACCU_TOTAL - outputRaster - Accumulated Material
##' * ACCU_LEFT - outputRaster - Accumulated Material from left side
##' * ACCU_RIGHT - outputRaster - Accumulated Material from right side
##' * FLOW_LENGTH - outputRaster - Flow Path Length
##' * WEIGHT_LOSS - outputRaster - Loss through Negative Weights
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_catchmentarearecursive <- function(ELEVATION = qgisprocess::qgis_default_value(), FLOW_UNIT = qgisprocess::qgis_default_value(), SINKROUTE = qgisprocess::qgis_default_value(), WEIGHTS = qgisprocess::qgis_default_value(), ACCU_MATERIAL = qgisprocess::qgis_default_value(), VAL_INPUT = qgisprocess::qgis_default_value(), ACCU_TARGET = qgisprocess::qgis_default_value(), STEP = qgisprocess::qgis_default_value(), TARGETS = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(), CONVERGENCE = qgisprocess::qgis_default_value(), NO_NEGATIVES = qgisprocess::qgis_default_value(), FLOW = qgisprocess::qgis_default_value(), VAL_MEAN = qgisprocess::qgis_default_value(), ACCU_TOTAL = qgisprocess::qgis_default_value(), ACCU_LEFT = qgisprocess::qgis_default_value(), ACCU_RIGHT = qgisprocess::qgis_default_value(), FLOW_LENGTH = qgisprocess::qgis_default_value(), WEIGHT_LOSS = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:catchmentarearecursive")

  output <- qgisprocess::qgis_run_algorithm("saga:catchmentarearecursive", `ELEVATION` = ELEVATION, `FLOW_UNIT` = FLOW_UNIT, `SINKROUTE` = SINKROUTE, `WEIGHTS` = WEIGHTS, `ACCU_MATERIAL` = ACCU_MATERIAL, `VAL_INPUT` = VAL_INPUT, `ACCU_TARGET` = ACCU_TARGET, `STEP` = STEP, `TARGETS` = TARGETS, `METHOD` = METHOD, `CONVERGENCE` = CONVERGENCE, `NO_NEGATIVES` = NO_NEGATIVES, `FLOW` = FLOW, `VAL_MEAN` = VAL_MEAN, `ACCU_TOTAL` = ACCU_TOTAL, `ACCU_LEFT` = ACCU_LEFT, `ACCU_RIGHT` = ACCU_RIGHT, `FLOW_LENGTH` = FLOW_LENGTH, `WEIGHT_LOSS` = WEIGHT_LOSS,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "FLOW")
  }
}