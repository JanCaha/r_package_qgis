##' QGIS Algorithm provided by QGIS (native c++) Drop field(s) (native:deletecolumn)
##'
##' @title QGIS algorithm Drop field(s)
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param COLUMN `field` - Fields to drop. The name of an existing field. ; delimited list of existing field names.
##' @param OUTPUT `sink` - Remaining fields. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Remaining fields
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_deletecolumn <- function(INPUT = qgisprocess::qgis_default_value(), COLUMN = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("native:deletecolumn")
  output <- qgisprocess::qgis_run_algorithm("native:deletecolumn",`INPUT` = INPUT, `COLUMN` = COLUMN, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}