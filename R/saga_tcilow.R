##' QGIS Algorithm provided by SAGA Tci low (saga:tcilow)
##'
##' @title QGIS algorithm Tci low
##'
##' @param DISTANCE `raster` - Vertical Distance to Channel Network. Path to a raster layer.
##' @param TWI `raster` - Topographic Wetness Index. Path to a raster layer.
##' @param TCILOW `rasterDestination` - TCI Low. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * TCILOW - outputRaster - TCI Low
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

saga_tcilow <- function(DISTANCE = qgisprocess:::qgis_default_value(), TWI = qgisprocess:::qgis_default_value(), TCILOW = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:tcilow")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:tcilow", `DISTANCE` = DISTANCE, `TWI` = TWI, `TCILOW` = TCILOW,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:tcilow", `DISTANCE` = DISTANCE, `TWI` = TWI, `TCILOW` = TCILOW,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "TCILOW")
  }
}