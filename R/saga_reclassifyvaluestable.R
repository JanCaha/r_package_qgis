##' QGIS Algorithm provided by SAGA Reclassify values (table) (saga:reclassifyvaluestable)
##'
##' @title QGIS algorithm Reclassify values (table)
##'
##' @param INPUT `raster` - Grid. Path to a raster layer.
##' @param RETAB `matrix` - Lookup Table. A comma delimited list of values.
##' @param TOPERATOR `enum`  of `("[0] min <= value < max", "[1] min <= value <= max", "[2] min < value <= max", "[3] min < value < max")` - operator (for table). Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
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

saga_reclassifyvaluestable <- function(INPUT = qgisprocess::qgis_default_value(), RETAB = qgisprocess::qgis_default_value(), TOPERATOR = qgisprocess::qgis_default_value(), NODATAOPT = qgisprocess::qgis_default_value(), NODATA = qgisprocess::qgis_default_value(), OTHEROPT = qgisprocess::qgis_default_value(), OTHERS = qgisprocess::qgis_default_value(), RESULT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:reclassifyvaluestable")
  output <- qgisprocess::qgis_run_algorithm("saga:reclassifyvaluestable",`INPUT` = INPUT, `RETAB` = RETAB, `TOPERATOR` = TOPERATOR, `NODATAOPT` = NODATAOPT, `NODATA` = NODATA, `OTHEROPT` = OTHEROPT, `OTHERS` = OTHERS, `RESULT` = RESULT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "RESULT")
  }
}