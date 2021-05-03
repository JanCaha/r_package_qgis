##' QGIS Algorithm provided by SAGA Covered distance (saga:covereddistance)
##'
##' @title QGIS algorithm Covered distance
##'
##' @param INPUT `multilayer` - Grids. .
##' @param RESULT `rasterDestination` - Covered Distance. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputRaster - Covered Distance
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_covereddistance <- function(INPUT = qgisprocess::qgis_default_value(), RESULT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:covereddistance")

  output <- qgisprocess::qgis_run_algorithm("saga:covereddistance", `INPUT` = INPUT, `RESULT` = RESULT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "RESULT")
  }
}