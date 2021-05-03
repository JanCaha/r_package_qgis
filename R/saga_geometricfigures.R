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
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputRaster - Result
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_geometricfigures <- function(CELL_COUNT = qgisprocess::qgis_default_value(), CELL_SIZE = qgisprocess::qgis_default_value(), FIGURE = qgisprocess::qgis_default_value(), PLANE = qgisprocess::qgis_default_value(), RESULT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:geometricfigures")
  output <- qgisprocess::qgis_run_algorithm("saga:geometricfigures",`CELL_COUNT` = CELL_COUNT, `CELL_SIZE` = CELL_SIZE, `FIGURE` = FIGURE, `PLANE` = PLANE, `RESULT` = RESULT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "RESULT")
  }
}