##' QGIS Algorithm provided by SAGA Geometric figures (saga:geometricfigures)
##'
##' @title QGIS algorithm Geometric figures
##'
##' @param CELL_COUNT `number` - Cell Count. A numeric value.
##' @param CELL_SIZE `number` - Cell Size. A numeric value.
##' @param FIGURE `enum`  of `("[0] Cone (up)", "[1] Cone (down)", "[2] Plane")` - Figure. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param PLANE `number` - Direction of Plane (Degree). A numeric value.
##' @param RESULT `rasterDestination` - Result. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputRaster - Result
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

saga_geometricfigures <- function(CELL_COUNT = qgisprocess:::qgis_default_value(), CELL_SIZE = qgisprocess:::qgis_default_value(), FIGURE = qgisprocess:::qgis_default_value(), PLANE = qgisprocess:::qgis_default_value(), RESULT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:geometricfigures")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:geometricfigures", `CELL_COUNT` = CELL_COUNT, `CELL_SIZE` = CELL_SIZE, `FIGURE` = FIGURE, `PLANE` = PLANE, `RESULT` = RESULT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:geometricfigures", `CELL_COUNT` = CELL_COUNT, `CELL_SIZE` = CELL_SIZE, `FIGURE` = FIGURE, `PLANE` = PLANE, `RESULT` = RESULT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "RESULT")
  }
}