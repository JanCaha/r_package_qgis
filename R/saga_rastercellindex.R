##' QGIS Algorithm provided by SAGA Raster cell index (saga:rastercellindex)
##'
##' @title QGIS algorithm Raster cell index
##'
##' @param GRID `raster` - Input Grid. Path to a raster layer.
##' @param ORDER `enum`  of `("[0] ascending", "[1] descending")` - Index. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param INDEX `rasterDestination` - Sorted Grid. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * INDEX - outputRaster - Sorted Grid
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_rastercellindex <- function(GRID = qgisprocess::qgis_default_value(), ORDER = qgisprocess::qgis_default_value(), INDEX = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:rastercellindex",`GRID` = GRID, `ORDER` = ORDER, `INDEX` = INDEX,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "INDEX")
}
}