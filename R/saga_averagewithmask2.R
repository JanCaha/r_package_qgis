##' QGIS Algorithm provided by SAGA Average with mask 2 (saga:averagewithmask2)
##'
##' @title QGIS algorithm Average with mask 2
##'
##' @param INPUT `raster` - Input. Path to a raster layer.
##' @param MASK `raster` - Mask Grid. Path to a raster layer.
##' @param RESULT `rasterDestination` - AWM2 Grid. Path for new raster layer.
##' @param V `number` - Mask value. A numeric value.
##' @param RX `number` - Radius X. A numeric value.
##' @param RY `number` - Radius Y. A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputRaster - AWM2 Grid
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_averagewithmask2 <- function(INPUT = qgisprocess::qgis_default_value(), MASK = qgisprocess::qgis_default_value(), RESULT = qgisprocess::qgis_default_value(), V = qgisprocess::qgis_default_value(), RX = qgisprocess::qgis_default_value(), RY = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:averagewithmask2")

  output <- qgisprocess::qgis_run_algorithm("saga:averagewithmask2", `INPUT` = INPUT, `MASK` = MASK, `RESULT` = RESULT, `V` = V, `RX` = RX, `RY` = RY,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "RESULT")
  }
}