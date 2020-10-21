##' QGIS Algorithm provided by SAGA Fast region growing algorithm (saga:fastregiongrowingalgorithm)
##'
##' @title QGIS algorithm Fast region growing algorithm
##'
##' @param INPUT `multilayer` - Input Grids. .
##' @param START `raster` - Seeds Grid. Path to a raster layer.
##' @param REP `raster` - Smooth Rep. Path to a raster layer.
##' @param RESULT `rasterDestination` - Segmente. Path for new raster layer.
##' @param MEAN `rasterDestination` - Mean. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputRaster - Segmente
##' * MEAN - outputRaster - Mean
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_fastregiongrowingalgorithm <- function(INPUT = qgisprocess::qgis_default_value(), START = qgisprocess::qgis_default_value(), REP = qgisprocess::qgis_default_value(), RESULT = qgisprocess::qgis_default_value(), MEAN = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:fastregiongrowingalgorithm",`INPUT` = INPUT, `START` = START, `REP` = REP, `RESULT` = RESULT, `MEAN` = MEAN,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "RESULT")
  }
}