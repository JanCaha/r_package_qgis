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
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * ALLOC - outputRaster - Allocation Grid
##' * BUFFER - outputRaster - Buffer Grid
##' * DISTANCE - outputRaster - Distance Grid
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

saga_rasterproximitybuffer <- function(SOURCE = qgisprocess:::qgis_default_value(), DIST = qgisprocess:::qgis_default_value(), IVAL = qgisprocess:::qgis_default_value(), DISTANCE = qgisprocess:::qgis_default_value(), ALLOC = qgisprocess:::qgis_default_value(), BUFFER = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:rasterproximitybuffer")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:rasterproximitybuffer", `SOURCE` = SOURCE, `DIST` = DIST, `IVAL` = IVAL, `DISTANCE` = DISTANCE, `ALLOC` = ALLOC, `BUFFER` = BUFFER,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:rasterproximitybuffer", `SOURCE` = SOURCE, `DIST` = DIST, `IVAL` = IVAL, `DISTANCE` = DISTANCE, `ALLOC` = ALLOC, `BUFFER` = BUFFER,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "ALLOC")
  }
}