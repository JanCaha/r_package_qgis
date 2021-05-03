##' QGIS Algorithm provided by SAGA Raster buffer (saga:rasterbuffer)
##'
##' @title QGIS algorithm Raster buffer
##'
##' @param FEATURES `raster` - Features Grid. Path to a raster layer.
##' @param DISTANCE `number` - Distance. A numeric value.
##' @param TYPE `enum`  of `("[0] fixed", "[1] cell's value")` - Buffer Distance. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param BUFFER `rasterDestination` - Buffer Grid. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * BUFFER - outputRaster - Buffer Grid
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_rasterbuffer <- function(FEATURES = qgisprocess::qgis_default_value(), DISTANCE = qgisprocess::qgis_default_value(), TYPE = qgisprocess::qgis_default_value(), BUFFER = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:rasterbuffer")

  output <- qgisprocess::qgis_run_algorithm("saga:rasterbuffer", `FEATURES` = FEATURES, `DISTANCE` = DISTANCE, `TYPE` = TYPE, `BUFFER` = BUFFER,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "BUFFER")
  }
}