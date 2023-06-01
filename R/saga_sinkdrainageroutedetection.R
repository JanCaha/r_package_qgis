##' QGIS Algorithm provided by SAGA Sink drainage route detection (saga:sinkdrainageroutedetection)
##'
##' @title QGIS algorithm Sink drainage route detection
##'
##' @param ELEVATION `raster` - Elevation. Path to a raster layer.
##' @param THRSHEIGHT `number` - Threshold Height. A numeric value.
##' @param SINKROUTE `rasterDestination` - Sink Route. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * SINKROUTE - outputRaster - Sink Route
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

saga_sinkdrainageroutedetection <- function(ELEVATION = qgisprocess:::qgis_default_value(), THRSHEIGHT = qgisprocess:::qgis_default_value(), SINKROUTE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:sinkdrainageroutedetection")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:sinkdrainageroutedetection", `ELEVATION` = ELEVATION, `THRSHEIGHT` = THRSHEIGHT, `SINKROUTE` = SINKROUTE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:sinkdrainageroutedetection", `ELEVATION` = ELEVATION, `THRSHEIGHT` = THRSHEIGHT, `SINKROUTE` = SINKROUTE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "SINKROUTE")
  }
}