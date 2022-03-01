##' QGIS Algorithm provided by SAGA Watershed basins (saga:watershedbasins)
##'
##' @title QGIS algorithm Watershed basins
##'
##' @param ELEVATION `raster` - Elevation. Path to a raster layer.
##' @param CHANNELS `raster` - Channel Network. Path to a raster layer.
##' @param SINKROUTE `raster` - Sink Route. Path to a raster layer.
##' @param MINSIZE `number` - Min. Size. A numeric value.
##' @param BASINS `rasterDestination` - Watershed Basins. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * BASINS - outputRaster - Watershed Basins
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_watershedbasins <- function(ELEVATION = qgisprocess::qgis_default_value(), CHANNELS = qgisprocess::qgis_default_value(), SINKROUTE = qgisprocess::qgis_default_value(), MINSIZE = qgisprocess::qgis_default_value(), BASINS = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:watershedbasins")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:watershedbasins", `ELEVATION` = ELEVATION, `CHANNELS` = CHANNELS, `SINKROUTE` = SINKROUTE, `MINSIZE` = MINSIZE, `BASINS` = BASINS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:watershedbasins", `ELEVATION` = ELEVATION, `CHANNELS` = CHANNELS, `SINKROUTE` = SINKROUTE, `MINSIZE` = MINSIZE, `BASINS` = BASINS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "BASINS")
  }
}