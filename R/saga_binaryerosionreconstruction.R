##' QGIS Algorithm provided by SAGA Binary erosion-reconstruction (saga:binaryerosionreconstruction)
##'
##' @title QGIS algorithm Binary erosion-reconstruction
##'
##' @param INPUT_GRID `raster` - Input Grid. Path to a raster layer.
##' @param OUTPUT_GRID `rasterDestination` - Output Grid. Path for new raster layer.
##' @param RADIUS `number` - Filter Size (Radius). A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT_GRID - outputRaster - Output Grid
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_binaryerosionreconstruction <- function(INPUT_GRID = qgisprocess::qgis_default_value(), OUTPUT_GRID = qgisprocess::qgis_default_value(), RADIUS = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:binaryerosionreconstruction")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:binaryerosionreconstruction", `INPUT_GRID` = INPUT_GRID, `OUTPUT_GRID` = OUTPUT_GRID, `RADIUS` = RADIUS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:binaryerosionreconstruction", `INPUT_GRID` = INPUT_GRID, `OUTPUT_GRID` = OUTPUT_GRID, `RADIUS` = RADIUS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT_GRID")
  }
}