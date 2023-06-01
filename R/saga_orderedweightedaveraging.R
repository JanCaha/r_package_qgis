##' QGIS Algorithm provided by SAGA Ordered weighted averaging (saga:orderedweightedaveraging)
##'
##' @title QGIS algorithm Ordered weighted averaging
##'
##' @param GRIDS `multilayer` - Input Grids. .
##' @param WEIGHTS `matrix` - Weights. A comma delimited list of values.
##' @param OUTPUT `rasterDestination` - Output Grid. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Output Grid
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

saga_orderedweightedaveraging <- function(GRIDS = qgisprocess:::qgis_default_value(), WEIGHTS = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:orderedweightedaveraging")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:orderedweightedaveraging", `GRIDS` = GRIDS, `WEIGHTS` = WEIGHTS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:orderedweightedaveraging", `GRIDS` = GRIDS, `WEIGHTS` = WEIGHTS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}