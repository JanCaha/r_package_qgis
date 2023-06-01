##' QGIS Algorithm provided by SAGA Fuzzy union (or) (saga:fuzzyunionor)
##'
##' @title QGIS algorithm Fuzzy union (or)
##'
##' @param GRIDS `multilayer` - Grids. .
##' @param TYPE `enum`  of `("[0] max(a, b) (non-interactive)", "[1] a + b - a * b", "[2] min(1, a + b)")` - Operator Type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param OR `rasterDestination` - Union. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OR - outputRaster - Union
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

saga_fuzzyunionor <- function(GRIDS = qgisprocess:::qgis_default_value(), TYPE = qgisprocess:::qgis_default_value(), OR = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:fuzzyunionor")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:fuzzyunionor", `GRIDS` = GRIDS, `TYPE` = TYPE, `OR` = OR,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:fuzzyunionor", `GRIDS` = GRIDS, `TYPE` = TYPE, `OR` = OR,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OR")
  }
}