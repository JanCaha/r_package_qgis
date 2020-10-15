##' QGIS Algorithm provided by SAGA Angular distance weighted (saga:angulardistanceweighted)
##'
##' @title QGIS algorithm Angular distance weighted
##'
##' @param SHAPES `source` - Points. Path to a vector layer.
##' @param FIELD `field` - Attribute. The name of an existing field. ; delimited list of existing field names.
##' @param TARGET_DEFINITION `enum`  of `("[0] user defined", "[1] grid or grid system")` - Target Grid System. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param TARGET_USER_SIZE `number` - Cellsize. A numeric value.
##' @param TARGET_USER_XMIN `number` - Left. A numeric value.
##' @param TARGET_USER_XMAX `number` - Right. A numeric value.
##' @param TARGET_USER_YMIN `number` - Bottom. A numeric value.
##' @param TARGET_USER_YMAX `number` - Top. A numeric value.
##' @param TARGET_USER_FITS `enum`  of `("[0] nodes", "[1] cells")` - Fit. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param TARGET_TEMPLATE `raster` - Target System. Path to a raster layer.
##' @param TARGET_OUT_GRID `rasterDestination` - Target Grid. Path for new raster layer.
##' @param SEARCH_RANGE `enum`  of `("[0] local", "[1] global")` - Search Range. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SEARCH_RADIUS `number` - Maximum Search Distance. A numeric value.
##' @param SEARCH_POINTS_ALL `enum`  of `("[0] maximum number of nearest points", "[1] all points within search distance")` - Number of Points. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SEARCH_POINTS_MIN `number` - Minimum. A numeric value.
##' @param SEARCH_POINTS_MAX `number` - Maximum. A numeric value.
##' @param SEARCH_DIRECTION `enum`  of `("[0] all directions", "[1] quadrants")` - Direction. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DW_WEIGHTING `enum`  of `("[0] no distance weighting", "[1] inverse distance to a power", "[2] exponential", "[3] gaussian weighting")` - Weighting Function. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DW_IDW_POWER `number` - Inverse Distance Weighting Power. A numeric value.
##' @param DW_IDW_OFFSET `boolean` - Inverse Distance Offset. 1 for true/yes. 0 for false/no.
##' @param DW_BANDWIDTH `number` - Gaussian and Exponential Weighting Bandwidth. A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * TARGET_OUT_GRID - outputRaster - Target Grid
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_angulardistanceweighted <- function(SHAPES = qgisprocess::qgis_default_value(), FIELD = qgisprocess::qgis_default_value(), TARGET_DEFINITION = qgisprocess::qgis_default_value(), TARGET_USER_SIZE = qgisprocess::qgis_default_value(), TARGET_USER_XMIN = qgisprocess::qgis_default_value(), TARGET_USER_XMAX = qgisprocess::qgis_default_value(), TARGET_USER_YMIN = qgisprocess::qgis_default_value(), TARGET_USER_YMAX = qgisprocess::qgis_default_value(), TARGET_USER_FITS = qgisprocess::qgis_default_value(), TARGET_TEMPLATE = qgisprocess::qgis_default_value(), TARGET_OUT_GRID = qgisprocess::qgis_default_value(), SEARCH_RANGE = qgisprocess::qgis_default_value(), SEARCH_RADIUS = qgisprocess::qgis_default_value(), SEARCH_POINTS_ALL = qgisprocess::qgis_default_value(), SEARCH_POINTS_MIN = qgisprocess::qgis_default_value(), SEARCH_POINTS_MAX = qgisprocess::qgis_default_value(), SEARCH_DIRECTION = qgisprocess::qgis_default_value(), DW_WEIGHTING = qgisprocess::qgis_default_value(), DW_IDW_POWER = qgisprocess::qgis_default_value(), DW_IDW_OFFSET = qgisprocess::qgis_default_value(), DW_BANDWIDTH = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:angulardistanceweighted",`SHAPES` = SHAPES, `FIELD` = FIELD, `TARGET_DEFINITION` = TARGET_DEFINITION, `TARGET_USER_SIZE` = TARGET_USER_SIZE, `TARGET_USER_XMIN` = TARGET_USER_XMIN, `TARGET_USER_XMAX` = TARGET_USER_XMAX, `TARGET_USER_YMIN` = TARGET_USER_YMIN, `TARGET_USER_YMAX` = TARGET_USER_YMAX, `TARGET_USER_FITS` = TARGET_USER_FITS, `TARGET_TEMPLATE` = TARGET_TEMPLATE, `TARGET_OUT_GRID` = TARGET_OUT_GRID, `SEARCH_RANGE` = SEARCH_RANGE, `SEARCH_RADIUS` = SEARCH_RADIUS, `SEARCH_POINTS_ALL` = SEARCH_POINTS_ALL, `SEARCH_POINTS_MIN` = SEARCH_POINTS_MIN, `SEARCH_POINTS_MAX` = SEARCH_POINTS_MAX, `SEARCH_DIRECTION` = SEARCH_DIRECTION, `DW_WEIGHTING` = DW_WEIGHTING, `DW_IDW_POWER` = DW_IDW_POWER, `DW_IDW_OFFSET` = DW_IDW_OFFSET, `DW_BANDWIDTH` = DW_BANDWIDTH,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "TARGET_OUT_GRID")
}
}