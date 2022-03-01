##' QGIS Algorithm provided by SAGA Raster buffer (saga:rasterbuffer)
##'
##' @title QGIS algorithm Raster buffer
##'
##' @param FEATURES `raster` - Features Grid. Path to a raster layer.
##' @param DISTANCE `number` - Distance. A numeric value.
##' @param TYPE `enum`  of `("[0] fixed", "[1] cell's value")` - Buffer Distance. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param BUFFER `rasterDestination` - Buffer Grid. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * BUFFER - outputRaster - Buffer Grid
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_rasterbuffer <- function(FEATURES = qgisprocess::qgis_default_value(), DISTANCE = qgisprocess::qgis_default_value(), TYPE = qgisprocess::qgis_default_value(), BUFFER = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:rasterbuffer")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:rasterbuffer", `FEATURES` = FEATURES, `DISTANCE` = DISTANCE, `TYPE` = TYPE, `BUFFER` = BUFFER,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:rasterbuffer", `FEATURES` = FEATURES, `DISTANCE` = DISTANCE, `TYPE` = TYPE, `BUFFER` = BUFFER,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "BUFFER")
  }
}