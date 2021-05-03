##' QGIS Algorithm provided by SAGA Mirror grid (saga:mirrorgrid)
##'
##' @title QGIS algorithm Mirror grid
##'
##' @param GRID `raster` - Grid. Path to a raster layer.
##' @param MIRROR `rasterDestination` - Mirror Grid. Path for new raster layer.
##' @param METHOD `enum`  of `("[0] horizontally", "[1] vertically", "[2] both")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * MIRROR - outputRaster - Mirror Grid
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_mirrorgrid <- function(GRID = qgisprocess::qgis_default_value(), MIRROR = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:mirrorgrid")

  output <- qgisprocess::qgis_run_algorithm("saga:mirrorgrid", `GRID` = GRID, `MIRROR` = MIRROR, `METHOD` = METHOD,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "MIRROR")
  }
}