##' QGIS Algorithm provided by SAGA Directional average (saga:directionalaverage)
##'
##' @title QGIS algorithm Directional average
##'
##' @param INPUT `raster` - Input. Path to a raster layer.
##' @param RESULT `rasterDestination` - Output Grid. Path for new raster layer.
##' @param ANG `number` - Angle (in degrees). A numeric value.
##' @param R1 `number` - Main Radius. A numeric value.
##' @param R2 `number` - Transversal radius. A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputRaster - Output Grid
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

saga_directionalaverage <- function(INPUT = qgisprocess:::qgis_default_value(), RESULT = qgisprocess:::qgis_default_value(), ANG = qgisprocess:::qgis_default_value(), R1 = qgisprocess:::qgis_default_value(), R2 = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:directionalaverage")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:directionalaverage", `INPUT` = INPUT, `RESULT` = RESULT, `ANG` = ANG, `R1` = R1, `R2` = R2,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:directionalaverage", `INPUT` = INPUT, `RESULT` = RESULT, `ANG` = ANG, `R1` = R1, `R2` = R2,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "RESULT")
  }
}