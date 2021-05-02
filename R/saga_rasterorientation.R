##' QGIS Algorithm provided by SAGA Raster orientation (saga:rasterorientation)
##'
##' @title QGIS algorithm Raster orientation
##'
##' @param INPUT `raster` - Grid. Path to a raster layer.
##' @param METHOD `enum`  of `("[0] Copy", "[1] Flip", "[2] Mirror", "[3] Invert")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param RESULT `rasterDestination` - Changed Grid. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputRaster - Changed Grid
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_rasterorientation <- function(INPUT = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(), RESULT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:rasterorientation")
  output <- qgisprocess::qgis_run_algorithm("saga:rasterorientation",`INPUT` = INPUT, `METHOD` = METHOD, `RESULT` = RESULT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "RESULT")
  }
}