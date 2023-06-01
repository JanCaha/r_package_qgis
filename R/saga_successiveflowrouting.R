##' QGIS Algorithm provided by SAGA Successive flow routing (saga:successiveflowrouting)
##'
##' @title QGIS algorithm Successive flow routing
##'
##' @param DEM `raster` - DEM. Path to a raster layer.
##' @param ITERATIONS `number` - Iterations. A numeric value.
##' @param RUNOFF `number` - Runoff. A numeric value.
##' @param MANNING `number` - Manning's Roughness. A numeric value.
##' @param FLOW `rasterDestination` - Flow. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * FLOW - outputRaster - Flow
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

saga_successiveflowrouting <- function(DEM = qgisprocess:::qgis_default_value(), ITERATIONS = qgisprocess:::qgis_default_value(), RUNOFF = qgisprocess:::qgis_default_value(), MANNING = qgisprocess:::qgis_default_value(), FLOW = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:successiveflowrouting")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:successiveflowrouting", `DEM` = DEM, `ITERATIONS` = ITERATIONS, `RUNOFF` = RUNOFF, `MANNING` = MANNING, `FLOW` = FLOW,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:successiveflowrouting", `DEM` = DEM, `ITERATIONS` = ITERATIONS, `RUNOFF` = RUNOFF, `MANNING` = MANNING, `FLOW` = FLOW,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "FLOW")
  }
}