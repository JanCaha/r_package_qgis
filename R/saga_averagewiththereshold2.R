##' QGIS Algorithm provided by SAGA Average with thereshold 2 (saga:averagewiththereshold2)
##'
##' @title QGIS algorithm Average with thereshold 2
##'
##' @param INPUT `raster` - Input. Path to a raster layer.
##' @param RESULT `rasterDestination` - AWT Grid. Path for new raster layer.
##' @param RX `number` - Radius X. A numeric value.
##' @param RY `number` - Radius Y. A numeric value.
##' @param THRESH `number` - Threshold. A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputRaster - AWT Grid
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_averagewiththereshold2 <- function(INPUT = qgisprocess::qgis_default_value(), RESULT = qgisprocess::qgis_default_value(), RX = qgisprocess::qgis_default_value(), RY = qgisprocess::qgis_default_value(), THRESH = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:averagewiththereshold2")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:averagewiththereshold2", `INPUT` = INPUT, `RESULT` = RESULT, `RX` = RX, `RY` = RY, `THRESH` = THRESH,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:averagewiththereshold2", `INPUT` = INPUT, `RESULT` = RESULT, `RX` = RX, `RY` = RY, `THRESH` = THRESH,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "RESULT")
  }
}