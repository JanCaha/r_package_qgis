##' QGIS Algorithm provided by SAGA Raster values to points (randomly) (saga:rastervaluestopointsrandomly)
##'
##' @title QGIS algorithm Raster values to points (randomly)
##'
##' @param GRID `raster` - Grid. Path to a raster layer.
##' @param FREQ `number` - Frequency. A numeric value.
##' @param POINTS `vectorDestination` - Points. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * POINTS - outputVector - Points
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

saga_rastervaluestopointsrandomly <- function(GRID = qgisprocess:::qgis_default_value(), FREQ = qgisprocess:::qgis_default_value(), POINTS = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:rastervaluestopointsrandomly")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:rastervaluestopointsrandomly", `GRID` = GRID, `FREQ` = FREQ, `POINTS` = POINTS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:rastervaluestopointsrandomly", `GRID` = GRID, `FREQ` = FREQ, `POINTS` = POINTS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "POINTS")
  }
}