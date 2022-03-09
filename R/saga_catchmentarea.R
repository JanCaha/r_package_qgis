##' QGIS Algorithm provided by SAGA Catchment area (saga:catchmentarea)
##'
##' @title QGIS algorithm Catchment area
##'
##' @param ELEVATION `raster` - Elevation. Path to a raster layer.
##' @param METHOD `enum`  of `("[0] Deterministic 8", "[1] Rho 8", "[2] Braunschweiger Reliefmodell", "[3] Deterministic Infinity", "[4] Multiple Flow Direction", "[5] Multiple Triangular Flow Direction")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param FLOW `rasterDestination` - Catchment Area. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * FLOW - outputRaster - Catchment Area
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_catchmentarea <- function(ELEVATION = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(), FLOW = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:catchmentarea")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:catchmentarea", `ELEVATION` = ELEVATION, `METHOD` = METHOD, `FLOW` = FLOW,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:catchmentarea", `ELEVATION` = ELEVATION, `METHOD` = METHOD, `FLOW` = FLOW,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "FLOW")
  }
}