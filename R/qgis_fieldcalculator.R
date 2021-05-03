##' QGIS Algorithm provided by QGIS (native c++) Field calculator (native:fieldcalculator)
##'
##' @title QGIS algorithm Field calculator
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param FIELD_NAME `string` - Field name. String value.
##' @param FIELD_TYPE `enum`  of `("Float", "Integer", "String", "Date")` - Result field type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param FIELD_LENGTH `number` - Result field length. A numeric value.
##' @param FIELD_PRECISION `number` - Result field precision. A numeric value.
##' @param FORMULA `expression` - Formula. A valid QGIS expression string, e.g "road_name" = 'MAIN RD'.
##' @param OUTPUT `sink` - Calculated. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Calculated
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_fieldcalculator <- function(INPUT = qgisprocess::qgis_default_value(), FIELD_NAME = qgisprocess::qgis_default_value(), FIELD_TYPE = qgisprocess::qgis_default_value(), FIELD_LENGTH = qgisprocess::qgis_default_value(), FIELD_PRECISION = qgisprocess::qgis_default_value(), FORMULA = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("native:fieldcalculator")
  output <- qgisprocess::qgis_run_algorithm("native:fieldcalculator",`INPUT` = INPUT, `FIELD_NAME` = FIELD_NAME, `FIELD_TYPE` = FIELD_TYPE, `FIELD_LENGTH` = FIELD_LENGTH, `FIELD_PRECISION` = FIELD_PRECISION, `FORMULA` = FORMULA, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}