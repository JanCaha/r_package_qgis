##' QGIS Algorithm provided by SAGA Fuzzy intersection (and) (saga:fuzzyintersectionand)
##'
##' @title QGIS algorithm Fuzzy intersection (and)
##'
##' @param GRIDS `multilayer` - Grids. .
##' @param TYPE `enum`  of `("[0] min(a, b) (non-interactive)", "[1] a * b", "[2] max(0, a + b - 1)")` - Operator Type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param AND `rasterDestination` - Intersection. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * AND - outputRaster - Intersection
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_fuzzyintersectionand <- function(GRIDS = qgisprocess::qgis_default_value(), TYPE = qgisprocess::qgis_default_value(), AND = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:fuzzyintersectionand",`GRIDS` = GRIDS, `TYPE` = TYPE, `AND` = AND,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "AND")
  }
}