##' QGIS Algorithm provided by SAGA Random terrain generation (saga:randomterraingeneration)
##'
##' @title QGIS algorithm Random terrain generation
##'
##' @param RADIUS `number` - Radius (cells). A numeric value.
##' @param ITERATIONS `number` - Iterations. A numeric value.
##' @param TARGET_TYPE `enum`  of `("[0] User defined")` - Target Dimensions. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param USER_CELL_SIZE `number` - Grid Size. A numeric value.
##' @param USER_COLS `number` - Cols. A numeric value.
##' @param USER_ROWS `number` - Rows. A numeric value.
##' @param TARGET_GRID `rasterDestination` - Grid. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * TARGET_GRID - outputRaster - Grid
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_randomterraingeneration <- function(RADIUS = qgisprocess::qgis_default_value(), ITERATIONS = qgisprocess::qgis_default_value(), TARGET_TYPE = qgisprocess::qgis_default_value(), USER_CELL_SIZE = qgisprocess::qgis_default_value(), USER_COLS = qgisprocess::qgis_default_value(), USER_ROWS = qgisprocess::qgis_default_value(), TARGET_GRID = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:randomterraingeneration",`RADIUS` = RADIUS, `ITERATIONS` = ITERATIONS, `TARGET_TYPE` = TARGET_TYPE, `USER_CELL_SIZE` = USER_CELL_SIZE, `USER_COLS` = USER_COLS, `USER_ROWS` = USER_ROWS, `TARGET_GRID` = TARGET_GRID,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "TARGET_GRID")
  }
}