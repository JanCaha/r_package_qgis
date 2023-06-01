##' QGIS Algorithm provided by SAGA Threshold raster buffer (saga:thresholdrasterbuffer)
##'
##' @title QGIS algorithm Threshold raster buffer
##'
##' @param FEATURES `raster` - Features Grid. Path to a raster layer.
##' @param VALUE `raster` - Value Grid. Path to a raster layer.
##' @param THRESHOLDGRID `raster` - Threshold Grid. Path to a raster layer.
##' @param THRESHOLD `number` - Threshold. A numeric value.
##' @param THRESHOLDTYPE `enum`  of `("[0] Absolute", "[1] Relative from cell value")` - Threshold Type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param BUFFER `rasterDestination` - Buffer Grid. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * BUFFER - outputRaster - Buffer Grid
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

saga_thresholdrasterbuffer <- function(FEATURES = qgisprocess:::qgis_default_value(), VALUE = qgisprocess:::qgis_default_value(), THRESHOLDGRID = qgisprocess:::qgis_default_value(), THRESHOLD = qgisprocess:::qgis_default_value(), THRESHOLDTYPE = qgisprocess:::qgis_default_value(), BUFFER = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:thresholdrasterbuffer")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:thresholdrasterbuffer", `FEATURES` = FEATURES, `VALUE` = VALUE, `THRESHOLDGRID` = THRESHOLDGRID, `THRESHOLD` = THRESHOLD, `THRESHOLDTYPE` = THRESHOLDTYPE, `BUFFER` = BUFFER,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:thresholdrasterbuffer", `FEATURES` = FEATURES, `VALUE` = VALUE, `THRESHOLDGRID` = THRESHOLDGRID, `THRESHOLD` = THRESHOLD, `THRESHOLDTYPE` = THRESHOLDTYPE, `BUFFER` = BUFFER,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "BUFFER")
  }
}