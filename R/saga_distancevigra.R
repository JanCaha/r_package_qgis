##' QGIS Algorithm provided by SAGA Distance (vigra) (saga:distancevigra)
##'
##' @title QGIS algorithm Distance (vigra)
##'
##' @param INPUT `raster` - Features. Path to a raster layer.
##' @param OUTPUT `rasterDestination` - Distance. Path for new raster layer.
##' @param NORM `enum`  of `("[0] Chessboard", "[1] Manhattan", "[2] Euclidean")` - Type of distance calculation. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Distance
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_distancevigra <- function(INPUT = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(), NORM = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:distancevigra")

  output <- qgisprocess::qgis_run_algorithm("saga:distancevigra", `INPUT` = INPUT, `OUTPUT` = OUTPUT, `NORM` = NORM,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}