##' QGIS Algorithm provided by SAGA Thin plate spline (saga:thinplatespline)
##'
##' @title QGIS algorithm Thin plate spline
##'
##' @param SHAPES `source` - Points. Path to a vector layer.
##' @param FIELD `field` - Attribute. The name of an existing field. ; delimited list of existing field names.
##' @param REGULARISATION `number` - Regularisation. A numeric value.
##' @param SEARCH_RANGE `enum`  of `("[0] local", "[1] global")` - Search Range. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SEARCH_RADIUS `number` - Search Radius. A numeric value.
##' @param SEARCH_POINTS_ALL `enum`  of `("[0] maximum number of nearest points", "[1] all points within search distance")` - Number of Points. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SEARCH_POINTS_MIN `number` - Maximum Number of Points. A numeric value.
##' @param SEARCH_POINTS_MAX `number` - Maximum Number of Points. A numeric value.
##' @param SEARCH_DIRECTION `enum`  of `("[0] all directions", "[1] quadrants")` - Search Direction. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX `extent` - Output extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used.. Original algorithm parameter name: TARGET_USER_XMIN TARGET_USER_XMAX TARGET_USER_YMIN TARGET_USER_YMAX.
##' @param TARGET_USER_SIZE `number` - Cellsize. A numeric value.
##' @param TARGET_USER_FITS `enum`  of `("[0] nodes", "[1] cells")` - Fit. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param TARGET_TEMPLATE `raster` - Target system. Path to a raster layer.
##' @param TARGET_OUT_GRID `rasterDestination` - Grid. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * TARGET_OUT_GRID - outputRaster - Grid
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

saga_thinplatespline <- function(SHAPES = qgisprocess:::qgis_default_value(), FIELD = qgisprocess:::qgis_default_value(), REGULARISATION = qgisprocess:::qgis_default_value(), SEARCH_RANGE = qgisprocess:::qgis_default_value(), SEARCH_RADIUS = qgisprocess:::qgis_default_value(), SEARCH_POINTS_ALL = qgisprocess:::qgis_default_value(), SEARCH_POINTS_MIN = qgisprocess:::qgis_default_value(), SEARCH_POINTS_MAX = qgisprocess:::qgis_default_value(), SEARCH_DIRECTION = qgisprocess:::qgis_default_value(), TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX = qgisprocess:::qgis_default_value(), TARGET_USER_SIZE = qgisprocess:::qgis_default_value(), TARGET_USER_FITS = qgisprocess:::qgis_default_value(), TARGET_TEMPLATE = qgisprocess:::qgis_default_value(), TARGET_OUT_GRID = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:thinplatespline")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:thinplatespline", `SHAPES` = SHAPES, `FIELD` = FIELD, `REGULARISATION` = REGULARISATION, `SEARCH_RANGE` = SEARCH_RANGE, `SEARCH_RADIUS` = SEARCH_RADIUS, `SEARCH_POINTS_ALL` = SEARCH_POINTS_ALL, `SEARCH_POINTS_MIN` = SEARCH_POINTS_MIN, `SEARCH_POINTS_MAX` = SEARCH_POINTS_MAX, `SEARCH_DIRECTION` = SEARCH_DIRECTION, `TARGET_USER_XMIN TARGET_USER_XMAX TARGET_USER_YMIN TARGET_USER_YMAX` = TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX, `TARGET_USER_SIZE` = TARGET_USER_SIZE, `TARGET_USER_FITS` = TARGET_USER_FITS, `TARGET_TEMPLATE` = TARGET_TEMPLATE, `TARGET_OUT_GRID` = TARGET_OUT_GRID,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:thinplatespline", `SHAPES` = SHAPES, `FIELD` = FIELD, `REGULARISATION` = REGULARISATION, `SEARCH_RANGE` = SEARCH_RANGE, `SEARCH_RADIUS` = SEARCH_RADIUS, `SEARCH_POINTS_ALL` = SEARCH_POINTS_ALL, `SEARCH_POINTS_MIN` = SEARCH_POINTS_MIN, `SEARCH_POINTS_MAX` = SEARCH_POINTS_MAX, `SEARCH_DIRECTION` = SEARCH_DIRECTION, `TARGET_USER_XMIN TARGET_USER_XMAX TARGET_USER_YMIN TARGET_USER_YMAX` = TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX, `TARGET_USER_SIZE` = TARGET_USER_SIZE, `TARGET_USER_FITS` = TARGET_USER_FITS, `TARGET_TEMPLATE` = TARGET_TEMPLATE, `TARGET_OUT_GRID` = TARGET_OUT_GRID,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "TARGET_OUT_GRID")
  }
}