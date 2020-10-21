##' QGIS Algorithm provided by SAGA Flow path length (saga:flowpathlength)
##'
##' @title QGIS algorithm Flow path length
##'
##' @param ELEVATION `raster` - Elevation. Path to a raster layer.
##' @param SEED `raster` - Seeds. Path to a raster layer.
##' @param SEEDS_ONLY `boolean` - Seeds Only. 1 for true/yes. 0 for false/no.
##' @param METHOD `enum`  of `("[0] Deterministic 8 (D8)", "[1] Multiple Flow Direction (FD8)")` - Flow Routing Algorithm. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param CONVERGENCE `number` - Convergence (FD8). A numeric value.
##' @param LENGTH `rasterDestination` - Flow Path Length. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * LENGTH - outputRaster - Flow Path Length
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_flowpathlength <- function(ELEVATION = qgisprocess::qgis_default_value(), SEED = qgisprocess::qgis_default_value(), SEEDS_ONLY = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(), CONVERGENCE = qgisprocess::qgis_default_value(), LENGTH = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:flowpathlength",`ELEVATION` = ELEVATION, `SEED` = SEED, `SEEDS_ONLY` = SEEDS_ONLY, `METHOD` = METHOD, `CONVERGENCE` = CONVERGENCE, `LENGTH` = LENGTH,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "LENGTH")
  }
}