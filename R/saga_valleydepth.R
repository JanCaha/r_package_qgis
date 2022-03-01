##' QGIS Algorithm provided by SAGA Valley depth (saga:valleydepth)
##'
##' @title QGIS algorithm Valley depth
##'
##' @param ELEVATION `raster` - Elevation. Path to a raster layer.
##' @param VALLEY_DEPTH `rasterDestination` - Valley Depth. Path for new raster layer.
##' @param RIDGE_LEVEL `rasterDestination` - Ridge Level. Path for new raster layer.
##' @param THRESHOLD `number` - Tension Threshold (Percentage of Cell Size). A numeric value.
##' @param NOUNDERGROUND `boolean` - Keep Ridge Level above Surface. 1 for true/yes. 0 for false/no.
##' @param ORDER `number` - Ridge Detection Threshold. A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * RIDGE_LEVEL - outputRaster - Ridge Level
##' * VALLEY_DEPTH - outputRaster - Valley Depth
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_valleydepth <- function(ELEVATION = qgisprocess::qgis_default_value(), VALLEY_DEPTH = qgisprocess::qgis_default_value(), RIDGE_LEVEL = qgisprocess::qgis_default_value(), THRESHOLD = qgisprocess::qgis_default_value(), NOUNDERGROUND = qgisprocess::qgis_default_value(), ORDER = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:valleydepth")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:valleydepth", `ELEVATION` = ELEVATION, `VALLEY_DEPTH` = VALLEY_DEPTH, `RIDGE_LEVEL` = RIDGE_LEVEL, `THRESHOLD` = THRESHOLD, `NOUNDERGROUND` = NOUNDERGROUND, `ORDER` = ORDER,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:valleydepth", `ELEVATION` = ELEVATION, `VALLEY_DEPTH` = VALLEY_DEPTH, `RIDGE_LEVEL` = RIDGE_LEVEL, `THRESHOLD` = THRESHOLD, `NOUNDERGROUND` = NOUNDERGROUND, `ORDER` = ORDER,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "RIDGE_LEVEL")
  }
}