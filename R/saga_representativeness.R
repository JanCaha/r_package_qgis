##' QGIS Algorithm provided by SAGA Representativeness (saga:representativeness)
##'
##' @title QGIS algorithm Representativeness
##'
##' @param INPUT `raster` - Grid. Path to a raster layer.
##' @param RADIUS `number` - Radius (Cells). A numeric value.
##' @param EXPONENT `number` - Exponent. A numeric value.
##' @param RESULT `rasterDestination` - Representativeness. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputRaster - Representativeness
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_representativeness <- function(INPUT = qgisprocess::qgis_default_value(), RADIUS = qgisprocess::qgis_default_value(), EXPONENT = qgisprocess::qgis_default_value(), RESULT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:representativeness",`INPUT` = INPUT, `RADIUS` = RADIUS, `EXPONENT` = EXPONENT, `RESULT` = RESULT,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "RESULT")
}
}