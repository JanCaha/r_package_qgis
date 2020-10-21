##' QGIS Algorithm provided by SAGA Global moran's i for raster layer (saga:globalmoransiforrasterlayer)
##'
##' @title QGIS algorithm Global moran's i for raster layer
##'
##' @param GRID `raster` - Grid. Path to a raster layer.
##' @param CONTIGUITY `enum`  of `("[0] Rook", "[1] Queen")` - Case of contiguity. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param RESULT `vectorDestination` - Result. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputVector - Result
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_globalmoransiforrasterlayer <- function(GRID = qgisprocess::qgis_default_value(), CONTIGUITY = qgisprocess::qgis_default_value(), RESULT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:globalmoransiforrasterlayer",`GRID` = GRID, `CONTIGUITY` = CONTIGUITY, `RESULT` = RESULT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "RESULT")
  }
}