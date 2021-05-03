##' QGIS Algorithm provided by SAGA Directional average (saga:directionalaverage)
##'
##' @title QGIS algorithm Directional average
##'
##' @param INPUT `raster` - Input. Path to a raster layer.
##' @param RESULT `rasterDestination` - Output Grid. Path for new raster layer.
##' @param ANG `number` - Angle (in degrees). A numeric value.
##' @param R1 `number` - Main Radius. A numeric value.
##' @param R2 `number` - Transversal radius. A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputRaster - Output Grid
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_directionalaverage <- function(INPUT = qgisprocess::qgis_default_value(), RESULT = qgisprocess::qgis_default_value(), ANG = qgisprocess::qgis_default_value(), R1 = qgisprocess::qgis_default_value(), R2 = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:directionalaverage")

  output <- qgisprocess::qgis_run_algorithm("saga:directionalaverage", `INPUT` = INPUT, `RESULT` = RESULT, `ANG` = ANG, `R1` = R1, `R2` = R2,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "RESULT")
  }
}