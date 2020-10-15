##' QGIS Algorithm provided by SAGA Analytical hierarchy process (saga:analyticalhierarchyprocess)
##'
##' @title QGIS algorithm Analytical hierarchy process
##'
##' @param GRIDS `multilayer` - Input Grids. .
##' @param TABLE `source` - Pairwise Comparisons Table. Path to a vector layer.
##' @param OUTPUT `rasterDestination` - Output Grid. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Output Grid
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_analyticalhierarchyprocess <- function(GRIDS = qgisprocess::qgis_default_value(), TABLE = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:analyticalhierarchyprocess",`GRIDS` = GRIDS, `TABLE` = TABLE, `OUTPUT` = OUTPUT,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
}
}