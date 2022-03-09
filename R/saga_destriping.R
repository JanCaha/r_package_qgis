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
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
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

saga_destriping <- function(INPUT = qgisprocess::qgis_default_value(), RESULT3 = qgisprocess::qgis_default_value(), RESULT1 = qgisprocess::qgis_default_value(), RESULT2 = qgisprocess::qgis_default_value(), ANG = qgisprocess::qgis_default_value(), R = qgisprocess::qgis_default_value(), D = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:destriping")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:destriping", `INPUT` = INPUT, `RESULT3` = RESULT3, `RESULT1` = RESULT1, `RESULT2` = RESULT2, `ANG` = ANG, `R` = R, `D` = D,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:destriping", `INPUT` = INPUT, `RESULT3` = RESULT3, `RESULT1` = RESULT1, `RESULT2` = RESULT2, `ANG` = ANG, `R` = R, `D` = D,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "RESULT1")
  }
}