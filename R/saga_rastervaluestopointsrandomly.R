##' QGIS Algorithm provided by SAGA Raster values to points (randomly) (saga:rastervaluestopointsrandomly)
##'
##' @title QGIS algorithm Raster values to points (randomly)
##'
##' @param GRID `raster` - Grid. Path to a raster layer.
##' @param FREQ `number` - Frequency. A numeric value.
##' @param POINTS `vectorDestination` - Points. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * POINTS - outputVector - Points
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_rastervaluestopointsrandomly <- function(GRID = qgisprocess::qgis_default_value(), FREQ = qgisprocess::qgis_default_value(), POINTS = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:rastervaluestopointsrandomly")

  output <- qgisprocess::qgis_run_algorithm("saga:rastervaluestopointsrandomly", `GRID` = GRID, `FREQ` = FREQ, `POINTS` = POINTS,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "POINTS")
  }
}