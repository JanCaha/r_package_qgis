##' QGIS Algorithm provided by SAGA Proximity raster (saga:proximityraster)
##'
##' @title QGIS algorithm Proximity raster
##'
##' @param FEATURES `raster` - Features. Path to a raster layer.
##' @param DISTANCE `rasterDestination` - Distance. Path for new raster layer.
##' @param DIRECTION `rasterDestination` - Direction. Path for new raster layer.
##' @param ALLOCATION `rasterDestination` - Allocation. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * DISTANCE - outputRaster - Distance
##' * DIRECTION - outputRaster - Direction
##' * ALLOCATION - outputRaster - Allocation
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_proximityraster <- function(FEATURES = qgisprocess::qgis_default_value(), DISTANCE = qgisprocess::qgis_default_value(), DIRECTION = qgisprocess::qgis_default_value(), ALLOCATION = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:proximityraster")
  output <- qgisprocess::qgis_run_algorithm("saga:proximityraster",`FEATURES` = FEATURES, `DISTANCE` = DISTANCE, `DIRECTION` = DIRECTION, `ALLOCATION` = ALLOCATION,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "DISTANCE")
  }
}