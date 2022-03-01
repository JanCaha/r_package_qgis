##' QGIS Algorithm provided by SAGA Vertical distance to channel network (saga:verticaldistancetochannelnetwork)
##'
##' @title QGIS algorithm Vertical distance to channel network
##'
##' @param ELEVATION `raster` - Elevation. Path to a raster layer.
##' @param CHANNELS `raster` - Channel Network. Path to a raster layer.
##' @param THRESHOLD `number` - Tension Threshold (Percentage of Cell Size). A numeric value.
##' @param DISTANCE `rasterDestination` - Vertical Distance to Channel Network. Path for new raster layer.
##' @param BASELEVEL `rasterDestination` - Channel Network Base Level. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * BASELEVEL - outputRaster - Channel Network Base Level
##' * DISTANCE - outputRaster - Vertical Distance to Channel Network
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_verticaldistancetochannelnetwork <- function(ELEVATION = qgisprocess::qgis_default_value(), CHANNELS = qgisprocess::qgis_default_value(), THRESHOLD = qgisprocess::qgis_default_value(), DISTANCE = qgisprocess::qgis_default_value(), BASELEVEL = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:verticaldistancetochannelnetwork")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:verticaldistancetochannelnetwork", `ELEVATION` = ELEVATION, `CHANNELS` = CHANNELS, `THRESHOLD` = THRESHOLD, `DISTANCE` = DISTANCE, `BASELEVEL` = BASELEVEL,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:verticaldistancetochannelnetwork", `ELEVATION` = ELEVATION, `CHANNELS` = CHANNELS, `THRESHOLD` = THRESHOLD, `DISTANCE` = DISTANCE, `BASELEVEL` = BASELEVEL,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "BASELEVEL")
  }
}