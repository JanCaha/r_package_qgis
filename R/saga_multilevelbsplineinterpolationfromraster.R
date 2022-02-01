##' QGIS Algorithm provided by SAGA Multilevel b-spline interpolation (from raster) (saga:multilevelbsplineinterpolationfromraster)
##'
##' @title QGIS algorithm Multilevel b-spline interpolation (from raster)
##'
##' @param GRID `raster` - Grid. Path to a raster layer.
##' @param METHOD `enum`  of `("[0] without B-spline refinement", "[1] with B-spline refinement")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param EPSILON `number` - Threshold Error. A numeric value.
##' @param LEVEL_MAX `number` - Maximum Level. A numeric value.
##' @param UPDATE `boolean` - Update View. 1 for true/yes. 0 for false/no.
##' @param DATATYPE `enum`  of `("[0] same as input grid", "[1] floating point")` - Data Type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX `extent` - Output extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used.. Original algorithm parameter name: TARGET_USER_XMIN TARGET_USER_XMAX TARGET_USER_YMIN TARGET_USER_YMAX.
##' @param TARGET_USER_SIZE `number` - Cellsize. A numeric value.
##' @param TARGET_USER_FITS `enum`  of `("[0] nodes", "[1] cells")` - Fit. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param TARGET_OUT_GRID `rasterDestination` - Grid. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * TARGET_OUT_GRID - outputRaster - Grid
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_multilevelbsplineinterpolationfromraster <- function(GRID = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(), EPSILON = qgisprocess::qgis_default_value(), LEVEL_MAX = qgisprocess::qgis_default_value(), UPDATE = qgisprocess::qgis_default_value(), DATATYPE = qgisprocess::qgis_default_value(), TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX = qgisprocess::qgis_default_value(), TARGET_USER_SIZE = qgisprocess::qgis_default_value(), TARGET_USER_FITS = qgisprocess::qgis_default_value(), TARGET_OUT_GRID = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:multilevelbsplineinterpolationfromraster")

  output <- qgisprocess::qgis_run_algorithm("saga:multilevelbsplineinterpolationfromraster", `GRID` = GRID, `METHOD` = METHOD, `EPSILON` = EPSILON, `LEVEL_MAX` = LEVEL_MAX, `UPDATE` = UPDATE, `DATATYPE` = DATATYPE, `TARGET_USER_XMIN TARGET_USER_XMAX TARGET_USER_YMIN TARGET_USER_YMAX` = TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX, `TARGET_USER_SIZE` = TARGET_USER_SIZE, `TARGET_USER_FITS` = TARGET_USER_FITS, `TARGET_OUT_GRID` = TARGET_OUT_GRID,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "TARGET_OUT_GRID")
  }
}