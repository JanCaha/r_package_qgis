##' QGIS Algorithm provided by SAGA Channel network (saga:channelnetwork)
##'
##' @title QGIS algorithm Channel network
##'
##' @param ELEVATION `raster` - Elevation. Path to a raster layer.
##' @param SINKROUTE `raster` - Flow Direction. Path to a raster layer.
##' @param INIT_GRID `raster` - Initiation Grid. Path to a raster layer.
##' @param INIT_METHOD `enum`  of `("[0] Less than", "[1] Equals", "[2] Greater than")` - Initiation Type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param INIT_VALUE `number` - Initiation Threshold. A numeric value.
##' @param DIV_GRID `raster` - Divergence. Path to a raster layer.
##' @param DIV_CELLS `number` - Tracing: Max. Divergence. A numeric value.
##' @param TRACE_WEIGHT `raster` - Tracing: Weight. Path to a raster layer.
##' @param MINLEN `number` - Min. Segment Length. A numeric value.
##' @param CHNLNTWRK `rasterDestination` - Channel Network. Path for new raster layer.
##' @param CHNLROUTE `rasterDestination` - Channel Direction. Path for new raster layer.
##' @param SHAPES `vectorDestination` - Channel Network. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * CHNLNTWRK - outputRaster - Channel Network
##' * CHNLROUTE - outputRaster - Channel Direction
##' * SHAPES - outputVector - Channel Network
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

saga_channelnetwork <- function(ELEVATION = qgisprocess:::qgis_default_value(), SINKROUTE = qgisprocess:::qgis_default_value(), INIT_GRID = qgisprocess:::qgis_default_value(), INIT_METHOD = qgisprocess:::qgis_default_value(), INIT_VALUE = qgisprocess:::qgis_default_value(), DIV_GRID = qgisprocess:::qgis_default_value(), DIV_CELLS = qgisprocess:::qgis_default_value(), TRACE_WEIGHT = qgisprocess:::qgis_default_value(), MINLEN = qgisprocess:::qgis_default_value(), CHNLNTWRK = qgisprocess:::qgis_default_value(), CHNLROUTE = qgisprocess:::qgis_default_value(), SHAPES = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:channelnetwork")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:channelnetwork", `ELEVATION` = ELEVATION, `SINKROUTE` = SINKROUTE, `INIT_GRID` = INIT_GRID, `INIT_METHOD` = INIT_METHOD, `INIT_VALUE` = INIT_VALUE, `DIV_GRID` = DIV_GRID, `DIV_CELLS` = DIV_CELLS, `TRACE_WEIGHT` = TRACE_WEIGHT, `MINLEN` = MINLEN, `CHNLNTWRK` = CHNLNTWRK, `CHNLROUTE` = CHNLROUTE, `SHAPES` = SHAPES,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:channelnetwork", `ELEVATION` = ELEVATION, `SINKROUTE` = SINKROUTE, `INIT_GRID` = INIT_GRID, `INIT_METHOD` = INIT_METHOD, `INIT_VALUE` = INIT_VALUE, `DIV_GRID` = DIV_GRID, `DIV_CELLS` = DIV_CELLS, `TRACE_WEIGHT` = TRACE_WEIGHT, `MINLEN` = MINLEN, `CHNLNTWRK` = CHNLNTWRK, `CHNLROUTE` = CHNLROUTE, `SHAPES` = SHAPES,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "CHNLNTWRK")
  }
}