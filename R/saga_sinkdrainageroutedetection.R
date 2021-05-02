##' QGIS Algorithm provided by SAGA Sink drainage route detection (saga:sinkdrainageroutedetection)
##'
##' @title QGIS algorithm Sink drainage route detection
##'
##' @param ELEVATION `raster` - Elevation. Path to a raster layer.
##' @param THRESHOLD `boolean` - Threshold. 1 for true/yes. 0 for false/no.
##' @param THRSHEIGHT `number` - Threshold Height. A numeric value.
##' @param SINKROUTE `rasterDestination` - Sink Route. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * SINKROUTE - outputRaster - Sink Route
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_sinkdrainageroutedetection <- function(ELEVATION = qgisprocess::qgis_default_value(), THRESHOLD = qgisprocess::qgis_default_value(), THRSHEIGHT = qgisprocess::qgis_default_value(), SINKROUTE = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:sinkdrainageroutedetection")
  output <- qgisprocess::qgis_run_algorithm("saga:sinkdrainageroutedetection",`ELEVATION` = ELEVATION, `THRESHOLD` = THRESHOLD, `THRSHEIGHT` = THRSHEIGHT, `SINKROUTE` = SINKROUTE,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "SINKROUTE")
  }
}