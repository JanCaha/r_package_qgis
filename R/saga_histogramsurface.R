##' QGIS Algorithm provided by SAGA Histogram surface (saga:histogramsurface)
##'
##' @title QGIS algorithm Histogram surface
##'
##' @param GRID `raster` - Grid. Path to a raster layer.
##' @param METHOD `enum`  of `("[0] rows", "[1] columns", "[2] circle")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param HIST `rasterDestination` - Histogram. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * HIST - outputRaster - Histogram
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_histogramsurface <- function(GRID = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(), HIST = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:histogramsurface")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:histogramsurface", `GRID` = GRID, `METHOD` = METHOD, `HIST` = HIST,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:histogramsurface", `GRID` = GRID, `METHOD` = METHOD, `HIST` = HIST,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "HIST")
  }
}