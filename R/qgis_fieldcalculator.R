##' QGIS Algorithm provided by QGIS (native c++) Field calculator (native:fieldcalculator). Computes a new vector layer with the same features of the input layer, but either overwriting an existing attribute or adding an additional attribute. This algorithm computes a new vector layer with the same features of the input layer, but either overwriting an existing attribute or adding an additional attribute. The values of this field are computed from each feature using an expression, based on the properties and attributes of the feature. Note that if "Field name" is an existing field in the layer then all the rest of the field settings are ignored.
##'
##' @title QGIS algorithm - Field calculator
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param FIELD_NAME `string` - Field name. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param FIELD_TYPE `enum`  of `("Decimal (double)", "Integer (32 bit)", "Text (string)", "Date", "Time", "Date & Time", "Boolean", "Binary Object (BLOB)", "String List", "Integer List", "Decimal (double) List")` - Result field type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param FIELD_LENGTH `number` - Result field length. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param FIELD_PRECISION `number` - Result field precision. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param FORMULA `expression` - Formula. A valid QGIS expression string, e.g "road_name" = 'MAIN RD'.
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

qgis_fieldcalculator <- function(INPUT = qgisprocess:::qgis_default_value(), FIELD_NAME = qgisprocess:::qgis_default_value(), FIELD_TYPE = qgisprocess:::qgis_default_value(), FIELD_LENGTH = qgisprocess:::qgis_default_value(), FIELD_PRECISION = qgisprocess:::qgis_default_value(), FORMULA = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:fieldcalculator")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:fieldcalculator", `INPUT` = INPUT, `FIELD_NAME` = FIELD_NAME, `FIELD_TYPE` = FIELD_TYPE, `FIELD_LENGTH` = FIELD_LENGTH, `FIELD_PRECISION` = FIELD_PRECISION, `FORMULA` = FORMULA, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:fieldcalculator", `INPUT` = INPUT, `FIELD_NAME` = FIELD_NAME, `FIELD_TYPE` = FIELD_TYPE, `FIELD_LENGTH` = FIELD_LENGTH, `FIELD_PRECISION` = FIELD_PRECISION, `FORMULA` = FORMULA, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}