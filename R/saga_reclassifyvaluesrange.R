##' QGIS Algorithm provided by SAGA Reclassify values (range) (saga:reclassifyvaluesrange)
##'
##' @title QGIS algorithm Reclassify values (range)
##'
##' @param INPUT `raster` - Grid. Path to a raster layer.
##' @param MIN `number` - minimum value (for range). A numeric value.
##' @param MAX `number` - maximum value (for range). A numeric value.
##' @param RNEW `number` - new value(for range). A numeric value.
##' @param ROPERATOR `enum`  of `("[0] <=", "[1] <")` - operator (for range). Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param NODATAOPT `boolean` - replace no data values. 1 for true/yes. 0 for false/no.
##' @param NODATA `number` - new value for no data values. A numeric value.
##' @param OTHEROPT `boolean` - replace other values. 1 for true/yes. 0 for false/no.
##' @param OTHERS `number` - new value for other values. A numeric value.
##' @param RESULT `rasterDestination` - Reclassified Grid. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputRaster - Reclassified Grid
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_reclassifyvaluesrange <- function(INPUT = qgisprocess::qgis_default_value(), MIN = qgisprocess::qgis_default_value(), MAX = qgisprocess::qgis_default_value(), RNEW = qgisprocess::qgis_default_value(), ROPERATOR = qgisprocess::qgis_default_value(), NODATAOPT = qgisprocess::qgis_default_value(), NODATA = qgisprocess::qgis_default_value(), OTHEROPT = qgisprocess::qgis_default_value(), OTHERS = qgisprocess::qgis_default_value(), RESULT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:reclassifyvaluesrange")
  output <- qgisprocess::qgis_run_algorithm("saga:reclassifyvaluesrange",`INPUT` = INPUT, `MIN` = MIN, `MAX` = MAX, `RNEW` = RNEW, `ROPERATOR` = ROPERATOR, `NODATAOPT` = NODATAOPT, `NODATA` = NODATA, `OTHEROPT` = OTHEROPT, `OTHERS` = OTHERS, `RESULT` = RESULT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "RESULT")
  }
}