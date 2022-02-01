##' QGIS Algorithm provided by SAGA Reclassify values (simple) (saga:reclassifyvaluessimple)
##'
##' @title QGIS algorithm Reclassify values (simple)
##'
##' @param GRID_IN `raster` - Grid. Path to a raster layer.
##' @param METHOD `enum`  of `("[0] Grid value equals low value", "[1] Low value < grid value < high value", "[2] Low value <= grid value < high value")` - Replace Condition. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param LOOKUP `matrix` - Lookup Table. A comma delimited list of values.
##' @param GRID_OUT `rasterDestination` - Changed Grid. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * GRID_OUT - outputRaster - Changed Grid
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_reclassifyvaluessimple <- function(GRID_IN = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(), LOOKUP = qgisprocess::qgis_default_value(), GRID_OUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:reclassifyvaluessimple")

  output <- qgisprocess::qgis_run_algorithm("saga:reclassifyvaluessimple", `GRID_IN` = GRID_IN, `METHOD` = METHOD, `LOOKUP` = LOOKUP, `GRID_OUT` = GRID_OUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "GRID_OUT")
  }
}