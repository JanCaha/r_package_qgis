##' QGIS Algorithm provided by SAGA Proximity raster (saga:proximityraster)
##'
##' @title QGIS algorithm Proximity raster
##'
##' @param FEATURES `raster` - Features. Path to a raster layer.
##' @param DISTANCE `rasterDestination` - Distance. Path for new raster layer.
##' @param DIRECTION `rasterDestination` - Direction. Path for new raster layer.
##' @param ALLOCATION `rasterDestination` - Allocation. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * ALLOCATION - outputRaster - Allocation
##' * DIRECTION - outputRaster - Direction
##' * DISTANCE - outputRaster - Distance
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

saga_proximityraster <- function(FEATURES = qgisprocess:::qgis_default_value(), DISTANCE = qgisprocess:::qgis_default_value(), DIRECTION = qgisprocess:::qgis_default_value(), ALLOCATION = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:proximityraster")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:proximityraster", `FEATURES` = FEATURES, `DISTANCE` = DISTANCE, `DIRECTION` = DIRECTION, `ALLOCATION` = ALLOCATION,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:proximityraster", `FEATURES` = FEATURES, `DISTANCE` = DISTANCE, `DIRECTION` = DIRECTION, `ALLOCATION` = ALLOCATION,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "ALLOCATION")
  }
}