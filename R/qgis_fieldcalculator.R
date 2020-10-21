##' QGIS Algorithm provided by QGIS Field calculator (qgis:fieldcalculator)
##'
##' @title QGIS algorithm Field calculator
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param FIELD_NAME `string` - Result field name. String value.
##' @param FIELD_TYPE `enum`  of `("Float", "Integer", "String", "Date")` - Field type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param FIELD_LENGTH `number` - Field length. A numeric value.
##' @param FIELD_PRECISION `number` - Field precision. A numeric value.
##' @param NEW_FIELD `boolean` - Create new field. 1 for true/yes. 0 for false/no.
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

qgis_fieldcalculator <- function(INPUT = qgisprocess::qgis_default_value(), FIELD_NAME = qgisprocess::qgis_default_value(), FIELD_TYPE = qgisprocess::qgis_default_value(), FIELD_LENGTH = qgisprocess::qgis_default_value(), FIELD_PRECISION = qgisprocess::qgis_default_value(), NEW_FIELD = qgisprocess::qgis_default_value(), FORMULA = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("qgis:fieldcalculator",`INPUT` = INPUT, `FIELD_NAME` = FIELD_NAME, `FIELD_TYPE` = FIELD_TYPE, `FIELD_LENGTH` = FIELD_LENGTH, `FIELD_PRECISION` = FIELD_PRECISION, `NEW_FIELD` = NEW_FIELD, `FORMULA` = FORMULA, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}