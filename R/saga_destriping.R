##' QGIS Algorithm provided by SAGA Destriping (saga:destriping)
##'
##' @title QGIS algorithm Destriping
##'
##' @param INPUT `raster` - Input. Path to a raster layer.
##' @param RESULT3 `rasterDestination` - Destriped Grid. Path for new raster layer.
##' @param RESULT1 `rasterDestination` - Low-pass 1. Path for new raster layer.
##' @param RESULT2 `rasterDestination` - Low-pass 2. Path for new raster layer.
##' @param ANG `number` - Angle (in degrees). A numeric value.
##' @param R `number` - Radius. A numeric value.
##' @param D `number` - Stripes distance. A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * RESULT1 - outputRaster - Low-pass 1
##' * RESULT2 - outputRaster - Low-pass 2
##' * RESULT3 - outputRaster - Destriped Grid
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_destriping <- function(INPUT = qgisprocess::qgis_default_value(), RESULT3 = qgisprocess::qgis_default_value(), RESULT1 = qgisprocess::qgis_default_value(), RESULT2 = qgisprocess::qgis_default_value(), ANG = qgisprocess::qgis_default_value(), R = qgisprocess::qgis_default_value(), D = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:destriping")

  output <- qgisprocess::qgis_run_algorithm("saga:destriping", `INPUT` = INPUT, `RESULT3` = RESULT3, `RESULT1` = RESULT1, `RESULT2` = RESULT2, `ANG` = ANG, `R` = R, `D` = D,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "RESULT1")
  }
}