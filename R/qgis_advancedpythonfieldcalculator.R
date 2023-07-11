##' QGIS Algorithm provided by QGIS Advanced Python field calculator (qgis:advancedpythonfieldcalculator). This algorithm adds a new attribute to a vector layer, with values resulting from applying an expression to each feature. The expression is defined as a Python function.
##'
##' @title QGIS algorithm - Advanced Python field calculator
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param FIELD_NAME `string` - Result field name. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param FIELD_TYPE `enum`  of `("Integer (32 bit)", "Decimal (double)", "Text (string)", "Boolean", "Date", "Time", "Date & Time", "Binary Object (BLOB)", "String List", "Integer List", "Decimal (double) List")` - Field type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param FIELD_LENGTH `number` - Field length. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param FIELD_PRECISION `number` - Field precision. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param GLOBAL `string` - Global expression. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param FORMULA `string` - Formula. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `sink` - Calculated. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Calculated
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_advancedpythonfieldcalculator <- function(INPUT = qgisprocess:::qgis_default_value(), FIELD_NAME = qgisprocess:::qgis_default_value(), FIELD_TYPE = qgisprocess:::qgis_default_value(), FIELD_LENGTH = qgisprocess:::qgis_default_value(), FIELD_PRECISION = qgisprocess:::qgis_default_value(), GLOBAL = qgisprocess:::qgis_default_value(), FORMULA = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("qgis:advancedpythonfieldcalculator")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("qgis:advancedpythonfieldcalculator", `INPUT` = INPUT, `FIELD_NAME` = FIELD_NAME, `FIELD_TYPE` = FIELD_TYPE, `FIELD_LENGTH` = FIELD_LENGTH, `FIELD_PRECISION` = FIELD_PRECISION, `GLOBAL` = GLOBAL, `FORMULA` = FORMULA, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("qgis:advancedpythonfieldcalculator", `INPUT` = INPUT, `FIELD_NAME` = FIELD_NAME, `FIELD_TYPE` = FIELD_TYPE, `FIELD_LENGTH` = FIELD_LENGTH, `FIELD_PRECISION` = FIELD_PRECISION, `GLOBAL` = GLOBAL, `FORMULA` = FORMULA, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}