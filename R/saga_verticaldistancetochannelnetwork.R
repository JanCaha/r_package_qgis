##' QGIS Algorithm provided by SAGA Vertical distance to channel network (saga:verticaldistancetochannelnetwork)
##'
##' @title QGIS algorithm Vertical distance to channel network
##'
##' @param ELEVATION `raster` - Elevation. Path to a raster layer.
##' @param CHANNELS `raster` - Channel Network. Path to a raster layer.
##' @param THRESHOLD `number` - Tension Threshold (Percentage of Cell Size). A numeric value.
##' @param NOUNDERGROUND `boolean` - Keep Base Level below Surface. 1 for true/yes. 0 for false/no.
##' @param DISTANCE `rasterDestination` - Vertical Distance to Channel Network. Path for new raster layer.
##' @param BASELEVEL `rasterDestination` - Channel Network Base Level. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * DISTANCE - outputRaster - Vertical Distance to Channel Network
##' * BASELEVEL - outputRaster - Channel Network Base Level
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_verticaldistancetochannelnetwork <- function(ELEVATION = qgisprocess::qgis_default_value(), CHANNELS = qgisprocess::qgis_default_value(), THRESHOLD = qgisprocess::qgis_default_value(), NOUNDERGROUND = qgisprocess::qgis_default_value(), DISTANCE = qgisprocess::qgis_default_value(), BASELEVEL = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:verticaldistancetochannelnetwork")
  output <- qgisprocess::qgis_run_algorithm("saga:verticaldistancetochannelnetwork",`ELEVATION` = ELEVATION, `CHANNELS` = CHANNELS, `THRESHOLD` = THRESHOLD, `NOUNDERGROUND` = NOUNDERGROUND, `DISTANCE` = DISTANCE, `BASELEVEL` = BASELEVEL,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "DISTANCE")
  }
}