##' QGIS Algorithm provided by SAGA Rasterize (saga:rasterize)
##'
##' @title QGIS algorithm Rasterize
##'
##' @param INPUT `source` - Shapes. Path to a vector layer.
##' @param FIELD `field` - Attribute. The name of an existing field. ; delimited list of existing field names.
##' @param OUTPUT `enum`  of `("[0] data / no-data", "[1] index number", "[2] attribute")` - Output Values. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param MULTIPLE `enum`  of `("[0] first", "[1] last", "[2] minimum", "[3] maximum", "[4] mean")` - Method for Multiple Values. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param LINE_TYPE `enum`  of `("[0] thin", "[1] thick")` - Method for Lines. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param POLY_TYPE `enum`  of `("[0] node", "[1] cell")` - Method for Lines. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param GRID_TYPE `enum`  of `("[0] Integer (1 byte)", "[1] Integer (2 byte)", "[2] Integer (4 byte)", "[3] Floating Point (4 byte)", "[4] Floating Point (8 byte)")` - Preferred Target Grid Type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX `extent` - Output extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used.. Original algorithm parameter name: TARGET_USER_XMIN TARGET_USER_XMAX TARGET_USER_YMIN TARGET_USER_YMAX.
##' @param TARGET_USER_SIZE `number` - Cellsize. A numeric value.
##' @param TARGET_USER_FITS `enum`  of `("[0] nodes", "[1] cells")` - Fit. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param GRID `rasterDestination` - Rasterized. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * GRID - outputRaster - Rasterized
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_rasterize <- function(INPUT = qgisprocess::qgis_default_value(), FIELD = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(), MULTIPLE = qgisprocess::qgis_default_value(), LINE_TYPE = qgisprocess::qgis_default_value(), POLY_TYPE = qgisprocess::qgis_default_value(), GRID_TYPE = qgisprocess::qgis_default_value(), TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX = qgisprocess::qgis_default_value(), TARGET_USER_SIZE = qgisprocess::qgis_default_value(), TARGET_USER_FITS = qgisprocess::qgis_default_value(), GRID = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:rasterize")
  output <- qgisprocess::qgis_run_algorithm("saga:rasterize",`INPUT` = INPUT, `FIELD` = FIELD, `OUTPUT` = OUTPUT, `MULTIPLE` = MULTIPLE, `LINE_TYPE` = LINE_TYPE, `POLY_TYPE` = POLY_TYPE, `GRID_TYPE` = GRID_TYPE, `TARGET_USER_XMIN TARGET_USER_XMAX TARGET_USER_YMIN TARGET_USER_YMAX` = TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX, `TARGET_USER_SIZE` = TARGET_USER_SIZE, `TARGET_USER_FITS` = TARGET_USER_FITS, `GRID` = GRID,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "GRID")
  }
}