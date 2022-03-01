##' QGIS Algorithm provided by SAGA Raster masking (saga:rastermasking)
##'
##' @title QGIS algorithm Raster masking
##'
##' @param GRID `raster` - Grid. Path to a raster layer.
##' @param MASK `raster` - Mask. Path to a raster layer.
##' @param MASKED `rasterDestination` - Masked Grid. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * MASKED - outputRaster - Masked Grid
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_rastermasking <- function(GRID = qgisprocess::qgis_default_value(), MASK = qgisprocess::qgis_default_value(), MASKED = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:rastermasking")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:rastermasking", `GRID` = GRID, `MASK` = MASK, `MASKED` = MASKED,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:rastermasking", `GRID` = GRID, `MASK` = MASK, `MASKED` = MASKED,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "MASKED")
  }
}