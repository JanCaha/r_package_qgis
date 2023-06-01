##' QGIS Algorithm provided by SAGA Cell balance (saga:cellbalance)
##'
##' @title QGIS algorithm Cell balance
##'
##' @param DEM `raster` - Elevation. Path to a raster layer.
##' @param WEIGHTS `raster` - Parameter. Path to a raster layer.
##' @param WEIGHTS_DEFAULT `number` - Default Weight. A numeric value.
##' @param METHOD `enum`  of `("[0] Deterministic 8", "[1] Multiple Flow Direction")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param BALANCE `rasterDestination` - Cell Balance. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * BALANCE - outputRaster - Cell Balance
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

saga_cellbalance <- function(DEM = qgisprocess:::qgis_default_value(), WEIGHTS = qgisprocess:::qgis_default_value(), WEIGHTS_DEFAULT = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), BALANCE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:cellbalance")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:cellbalance", `DEM` = DEM, `WEIGHTS` = WEIGHTS, `WEIGHTS_DEFAULT` = WEIGHTS_DEFAULT, `METHOD` = METHOD, `BALANCE` = BALANCE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:cellbalance", `DEM` = DEM, `WEIGHTS` = WEIGHTS, `WEIGHTS_DEFAULT` = WEIGHTS_DEFAULT, `METHOD` = METHOD, `BALANCE` = BALANCE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "BALANCE")
  }
}