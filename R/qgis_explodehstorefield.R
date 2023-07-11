##' QGIS Algorithm provided by QGIS (native c++) Explode HStore Field (native:explodehstorefield). This algorithm creates a copy of the input layer and adds a new field for every unique key in the HStore field. The expected field list is an optional comma separated list. By default, all unique keys are added. If this list is specified, only these fields are added and the HStore field is updated.
##'
##' @title QGIS algorithm - Explode HStore Field
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param FIELD `field` - HStore field. The name of an existing field. ; delimited list of existing field names.
##' @param EXPECTED_FIELDS `string` - Expected list of fields separated by a comma. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `sink` - Exploded. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Exploded
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_explodehstorefield <- function(INPUT = qgisprocess:::qgis_default_value(), FIELD = qgisprocess:::qgis_default_value(), EXPECTED_FIELDS = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:explodehstorefield")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:explodehstorefield", `INPUT` = INPUT, `FIELD` = FIELD, `EXPECTED_FIELDS` = EXPECTED_FIELDS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:explodehstorefield", `INPUT` = INPUT, `FIELD` = FIELD, `EXPECTED_FIELDS` = EXPECTED_FIELDS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}