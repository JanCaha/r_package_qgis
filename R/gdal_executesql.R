##' QGIS Algorithm provided by GDAL Execute SQL (gdal:executesql)
##'
##' @title QGIS algorithm Execute SQL
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param SQL `string` - SQL expression. String value.
##' @param DIALECT `enum`  of `("None", "OGR SQL", "SQLite")` - SQL dialect. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param OPTIONS `string` - Additional creation options. String value.
##' @param OUTPUT `vectorDestination` - SQL result. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - SQL result
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

gdal_executesql <- function(INPUT = qgisprocess::qgis_default_value(), SQL = qgisprocess::qgis_default_value(), DIALECT = qgisprocess::qgis_default_value(), OPTIONS = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("gdal:executesql")
  output <- qgisprocess::qgis_run_algorithm("gdal:executesql",`INPUT` = INPUT, `SQL` = SQL, `DIALECT` = DIALECT, `OPTIONS` = OPTIONS, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}