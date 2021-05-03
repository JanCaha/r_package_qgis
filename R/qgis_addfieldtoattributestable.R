##' QGIS Algorithm provided by QGIS (native c++) Add field to attributes table (native:addfieldtoattributestable)
##'
##' @title QGIS algorithm Add field to attributes table
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param FIELD_NAME `string` - Field name. String value.
##' @param FIELD_TYPE `enum`  of `("Integer", "Float", "String")` - Field type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param FIELD_LENGTH `number` - Field length. A numeric value.
##' @param FIELD_PRECISION `number` - Field precision. A numeric value.
##' @param OUTPUT `sink` - Added. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Added
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_addfieldtoattributestable <- function(INPUT = qgisprocess::qgis_default_value(), FIELD_NAME = qgisprocess::qgis_default_value(), FIELD_TYPE = qgisprocess::qgis_default_value(), FIELD_LENGTH = qgisprocess::qgis_default_value(), FIELD_PRECISION = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("native:addfieldtoattributestable")

  output <- qgisprocess::qgis_run_algorithm("native:addfieldtoattributestable", `INPUT` = INPUT, `FIELD_NAME` = FIELD_NAME, `FIELD_TYPE` = FIELD_TYPE, `FIELD_LENGTH` = FIELD_LENGTH, `FIELD_PRECISION` = FIELD_PRECISION, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}