##' QGIS Algorithm provided by SAGA Slope limited flow accumulation (saga:slopelimitedflowaccumulation)
##'
##' @title QGIS algorithm Slope limited flow accumulation
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param WEIGHT `raster` - Weight. Path to a raster layer.
##' @param FLOW `rasterDestination` - Flow Accumulation. Path for new raster layer.
##' @param SLOPE_MIN `number` - Slope Minimum. A numeric value.
##' @param SLOPE_MAX `number` - Slope Threshold. A numeric value.
##' @param B_FLOW `boolean` - Use Flow Threshold. 1 for true/yes. 0 for false/no.
##' @param T_FLOW_MIN `number` - Flow Threshold (Min). A numeric value.
##' @param T_FLOW_MAX `number` - Flow Threshold (Max). A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * FLOW - outputRaster - Flow Accumulation
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_slopelimitedflowaccumulation <- function(DEM = qgisprocess::qgis_default_value(), WEIGHT = qgisprocess::qgis_default_value(), FLOW = qgisprocess::qgis_default_value(), SLOPE_MIN = qgisprocess::qgis_default_value(), SLOPE_MAX = qgisprocess::qgis_default_value(), B_FLOW = qgisprocess::qgis_default_value(), T_FLOW_MIN = qgisprocess::qgis_default_value(), T_FLOW_MAX = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:slopelimitedflowaccumulation")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:slopelimitedflowaccumulation", `DEM` = DEM, `WEIGHT` = WEIGHT, `FLOW` = FLOW, `SLOPE_MIN` = SLOPE_MIN, `SLOPE_MAX` = SLOPE_MAX, `B_FLOW` = B_FLOW, `T_FLOW_MIN` = T_FLOW_MIN, `T_FLOW_MAX` = T_FLOW_MAX,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:slopelimitedflowaccumulation", `DEM` = DEM, `WEIGHT` = WEIGHT, `FLOW` = FLOW, `SLOPE_MIN` = SLOPE_MIN, `SLOPE_MAX` = SLOPE_MAX, `B_FLOW` = B_FLOW, `T_FLOW_MIN` = T_FLOW_MIN, `T_FLOW_MAX` = T_FLOW_MAX,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "FLOW")
  }
}