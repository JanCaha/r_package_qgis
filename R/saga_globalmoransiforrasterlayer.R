##' QGIS Algorithm provided by SAGA Global moran's i for raster layer (saga:globalmoransiforrasterlayer)
##'
##' @title QGIS algorithm Global moran's i for raster layer
##'
##' @param GRID `raster` - Grid. Path to a raster layer.
##' @param CONTIGUITY `enum`  of `("[0] Rook", "[1] Queen")` - Case of contiguity. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param RESULT `vectorDestination` - Result. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputVector - Result
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_globalmoransiforrasterlayer <- function(GRID = qgisprocess::qgis_default_value(), CONTIGUITY = qgisprocess::qgis_default_value(), RESULT = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:globalmoransiforrasterlayer")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:globalmoransiforrasterlayer", `GRID` = GRID, `CONTIGUITY` = CONTIGUITY, `RESULT` = RESULT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:globalmoransiforrasterlayer", `GRID` = GRID, `CONTIGUITY` = CONTIGUITY, `RESULT` = RESULT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "RESULT")
  }
}