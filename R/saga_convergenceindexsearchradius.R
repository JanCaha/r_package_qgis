##' QGIS Algorithm provided by SAGA Convergence index (search radius) (saga:convergenceindexsearchradius)
##'
##' @title QGIS algorithm Convergence index (search radius)
##'
##' @param ELEVATION `raster` - Elevation. Path to a raster layer.
##' @param RADIUS `number` - Radius (Cells). A numeric value.
##' @param DISTANCE_WEIGHTING_DW_WEIGHTING `enum`  of `("[0] no distance weighting", "[1] inverse distance to a power", "[2] exponential", "[3] gaussian weighting")` - Weighting Function. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DISTANCE_WEIGHTING_DW_IDW_POWER `number` - Inverse Distance Weighting Power. A numeric value.
##' @param DISTANCE_WEIGHTING_DW_IDW_OFFSET `boolean` - Inverse Distance Offset. 1 for true/yes. 0 for false/no.
##' @param DISTANCE_WEIGHTING_DW_BANDWIDTH `number` - Gaussian and Exponential Weighting Bandwidth. A numeric value.
##' @param SLOPE `boolean` - Gradient. 1 for true/yes. 0 for false/no.
##' @param DIFFERENCE `enum`  of `("[0] direction to the center cell", "[1] center cell's aspect direction")` - Weighting Function. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param CONVERGENCE `rasterDestination` - Convergence Index. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * CONVERGENCE - outputRaster - Convergence Index
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_convergenceindexsearchradius <- function(ELEVATION = qgisprocess::qgis_default_value(), RADIUS = qgisprocess::qgis_default_value(), DISTANCE_WEIGHTING_DW_WEIGHTING = qgisprocess::qgis_default_value(), DISTANCE_WEIGHTING_DW_IDW_POWER = qgisprocess::qgis_default_value(), DISTANCE_WEIGHTING_DW_IDW_OFFSET = qgisprocess::qgis_default_value(), DISTANCE_WEIGHTING_DW_BANDWIDTH = qgisprocess::qgis_default_value(), SLOPE = qgisprocess::qgis_default_value(), DIFFERENCE = qgisprocess::qgis_default_value(), CONVERGENCE = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:convergenceindexsearchradius")

  output <- qgisprocess::qgis_run_algorithm("saga:convergenceindexsearchradius", `ELEVATION` = ELEVATION, `RADIUS` = RADIUS, `DISTANCE_WEIGHTING_DW_WEIGHTING` = DISTANCE_WEIGHTING_DW_WEIGHTING, `DISTANCE_WEIGHTING_DW_IDW_POWER` = DISTANCE_WEIGHTING_DW_IDW_POWER, `DISTANCE_WEIGHTING_DW_IDW_OFFSET` = DISTANCE_WEIGHTING_DW_IDW_OFFSET, `DISTANCE_WEIGHTING_DW_BANDWIDTH` = DISTANCE_WEIGHTING_DW_BANDWIDTH, `SLOPE` = SLOPE, `DIFFERENCE` = DIFFERENCE, `CONVERGENCE` = CONVERGENCE,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "CONVERGENCE")
  }
}