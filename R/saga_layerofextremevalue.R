##' QGIS Algorithm provided by SAGA Layer of extreme value (saga:layerofextremevalue)
##'
##' @title QGIS algorithm Layer of extreme value
##'
##' @param GRIDS `multilayer` - Grids. .
##' @param CRITERIA `enum`  of `("[0] Maximum", "[1] Minimum")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param RESULT `rasterDestination` - Result. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputRaster - Result
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_layerofextremevalue <- function(GRIDS = qgisprocess::qgis_default_value(), CRITERIA = qgisprocess::qgis_default_value(), RESULT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:layerofextremevalue",`GRIDS` = GRIDS, `CRITERIA` = CRITERIA, `RESULT` = RESULT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "RESULT")
  }
}