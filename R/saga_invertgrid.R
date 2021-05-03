##' QGIS Algorithm provided by SAGA Invert grid (saga:invertgrid)
##'
##' @title QGIS algorithm Invert grid
##'
##' @param GRID `raster` - Grid. Path to a raster layer.
##' @param INVERSE `rasterDestination` - Inverse Grid. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * INVERSE - outputRaster - Inverse Grid
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_invertgrid <- function(GRID = qgisprocess::qgis_default_value(), INVERSE = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:invertgrid")
  output <- qgisprocess::qgis_run_algorithm("saga:invertgrid",`GRID` = GRID, `INVERSE` = INVERSE,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "INVERSE")
  }
}