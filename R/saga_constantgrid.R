##' QGIS Algorithm provided by SAGA Constant grid (saga:constantgrid)
##'
##' @title QGIS algorithm Constant grid
##'
##' @param NAME `string` - Name. String value.
##' @param CONST `number` - Constant Value. A numeric value.
##' @param TYPE `enum`  of `("[0] bit", "[1] unsigned 1 byte integer", "[2] signed 1 byte integer", "[3] unsigned 2 byte integer", "[4] signed 2 byte integer", "[5] unsigned 8 byte integer", "[6] signed 8 byte integer", "[7] 4 byte floating point number", "[8] 8 byte floating point number")` - Data Type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DEFINITION `enum`  of `("[0] user defined", "[1] grid or grid system")` - Target Grid System. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param USER_SIZE `number` - Cellsize. A numeric value.
##' @param USER_XMIN `number` - Left. A numeric value.
##' @param USER_XMAX `number` - Right. A numeric value.
##' @param USER_YMIN `number` - Bottom. A numeric value.
##' @param USER_YMAX `number` - Top. A numeric value.
##' @param USER_FITS `enum`  of `("[0] nodes", "[1] cells")` - Fit. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param TEMPLATE `raster` - Target System. Path to a raster layer.
##' @param OUT_GRID `rasterDestination` - Target Grid. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUT_GRID - outputRaster - Target Grid
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_constantgrid <- function(NAME = qgisprocess::qgis_default_value(), CONST = qgisprocess::qgis_default_value(), TYPE = qgisprocess::qgis_default_value(), DEFINITION = qgisprocess::qgis_default_value(), USER_SIZE = qgisprocess::qgis_default_value(), USER_XMIN = qgisprocess::qgis_default_value(), USER_XMAX = qgisprocess::qgis_default_value(), USER_YMIN = qgisprocess::qgis_default_value(), USER_YMAX = qgisprocess::qgis_default_value(), USER_FITS = qgisprocess::qgis_default_value(), TEMPLATE = qgisprocess::qgis_default_value(), OUT_GRID = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:constantgrid")
  output <- qgisprocess::qgis_run_algorithm("saga:constantgrid",`NAME` = NAME, `CONST` = CONST, `TYPE` = TYPE, `DEFINITION` = DEFINITION, `USER_SIZE` = USER_SIZE, `USER_XMIN` = USER_XMIN, `USER_XMAX` = USER_XMAX, `USER_YMIN` = USER_YMIN, `USER_YMAX` = USER_YMAX, `USER_FITS` = USER_FITS, `TEMPLATE` = TEMPLATE, `OUT_GRID` = OUT_GRID,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUT_GRID")
  }
}