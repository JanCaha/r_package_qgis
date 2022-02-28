##' QGIS Algorithm provided by SAGA Local minima and maxima (saga:localminimaandmaxima)
##'
##' @title QGIS algorithm Local minima and maxima
##'
##' @param GRID `raster` - Grid. Path to a raster layer.
##' @param MINIMA `vectorDestination` - Minima. Path for new vector layer.
##' @param MAXIMA `vectorDestination` - Maxima. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * MAXIMA - outputVector - Maxima
##' * MINIMA - outputVector - Minima
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_localminimaandmaxima <- function(GRID = qgisprocess::qgis_default_value(), MINIMA = qgisprocess::qgis_default_value(), MAXIMA = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:localminimaandmaxima")

  output <- qgisprocess::qgis_run_algorithm("saga:localminimaandmaxima", `GRID` = GRID, `MINIMA` = MINIMA, `MAXIMA` = MAXIMA,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "MAXIMA")
  }
}