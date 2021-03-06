##' QGIS Algorithm provided by SAGA Rasters sum (saga:rasterssum)
##'
##' @title QGIS algorithm Rasters sum
##'
##' @param GRIDS `multilayer` - Grids. .
##' @param RESULT `rasterDestination` - Sum. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputRaster - Sum
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_rasterssum <- function(GRIDS = qgisprocess::qgis_default_value(), RESULT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:rasterssum")

  output <- qgisprocess::qgis_run_algorithm("saga:rasterssum", `GRIDS` = GRIDS, `RESULT` = RESULT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "RESULT")
  }
}