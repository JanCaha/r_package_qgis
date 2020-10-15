##' QGIS Algorithm provided by SAGA Raster proximity buffer (saga:rasterproximitybuffer)
##'
##' @title QGIS algorithm Raster proximity buffer
##'
##' @param SOURCE `raster` - Source Grid. Path to a raster layer.
##' @param DIST `number` - Buffer distance. A numeric value.
##' @param IVAL `number` - Equidistance. A numeric value.
##' @param DISTANCE `rasterDestination` - Distance Grid. Path for new raster layer.
##' @param ALLOC `rasterDestination` - Allocation Grid. Path for new raster layer.
##' @param BUFFER `rasterDestination` - Buffer Grid. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * DISTANCE - outputRaster - Distance Grid
##' * ALLOC - outputRaster - Allocation Grid
##' * BUFFER - outputRaster - Buffer Grid
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_rasterproximitybuffer <- function(SOURCE = qgisprocess::qgis_default_value(), DIST = qgisprocess::qgis_default_value(), IVAL = qgisprocess::qgis_default_value(), DISTANCE = qgisprocess::qgis_default_value(), ALLOC = qgisprocess::qgis_default_value(), BUFFER = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:rasterproximitybuffer",`SOURCE` = SOURCE, `DIST` = DIST, `IVAL` = IVAL, `DISTANCE` = DISTANCE, `ALLOC` = ALLOC, `BUFFER` = BUFFER,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "DISTANCE")
}
}