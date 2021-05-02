##' QGIS Algorithm provided by SAGA Accumulated cost (saga:accumulatedcost)
##'
##' @title QGIS algorithm Accumulated cost
##'
##' @param DEST_TYPE `enum`  of `("[0] Point", "[1] Grid")` - Input Type of Destinations. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DEST_POINTS `source` - Destinations. Path to a vector layer.
##' @param DEST_GRID `raster` - Destinations. Path to a raster layer.
##' @param COST `raster` - Local Cost. Path to a raster layer.
##' @param DIR_MAXCOST `raster` - Direction of Maximum Cost. Path to a raster layer.
##' @param DIR_UNIT `enum`  of `("[0] radians", "[1] degree")` - Units of Direction. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DIR_K `number` - K Factor. A numeric value.
##' @param ACCUMULATED `rasterDestination` - Accumulated Cost. Path for new raster layer.
##' @param ALLOCATION `rasterDestination` - Allocation. Path for new raster layer.
##' @param THRESHOLD `number` - Threshold for different route. A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * ACCUMULATED - outputRaster - Accumulated Cost
##' * ALLOCATION - outputRaster - Allocation
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_accumulatedcost <- function(DEST_TYPE = qgisprocess::qgis_default_value(), DEST_POINTS = qgisprocess::qgis_default_value(), DEST_GRID = qgisprocess::qgis_default_value(), COST = qgisprocess::qgis_default_value(), DIR_MAXCOST = qgisprocess::qgis_default_value(), DIR_UNIT = qgisprocess::qgis_default_value(), DIR_K = qgisprocess::qgis_default_value(), ACCUMULATED = qgisprocess::qgis_default_value(), ALLOCATION = qgisprocess::qgis_default_value(), THRESHOLD = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:accumulatedcost")
  output <- qgisprocess::qgis_run_algorithm("saga:accumulatedcost",`DEST_TYPE` = DEST_TYPE, `DEST_POINTS` = DEST_POINTS, `DEST_GRID` = DEST_GRID, `COST` = COST, `DIR_MAXCOST` = DIR_MAXCOST, `DIR_UNIT` = DIR_UNIT, `DIR_K` = DIR_K, `ACCUMULATED` = ACCUMULATED, `ALLOCATION` = ALLOCATION, `THRESHOLD` = THRESHOLD,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "ACCUMULATED")
  }
}