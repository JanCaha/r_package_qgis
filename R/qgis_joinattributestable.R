##' QGIS Algorithm provided by QGIS (native c++) Join attributes by field value (native:joinattributestable). Creates a vector layer that is an extended version of the input one, with additional attributes taken from a second vector layer. This algorithm takes an input vector layer and creates a new vector layer that is an extended version of the input one, with additional attributes in its attribute table.  The additional attributes and their values are taken from a second vector layer. An attribute is selected in each of them to define the join criteria.  ---------------- Notes ----------------   - This algorithm drops existing primary keys or FID values and regenerates them in output layers.
##'
##' @title QGIS algorithm - Join attributes by field value
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param FIELD `field` - Table field. The name of an existing field. ; delimited list of existing field names.
##' @param INPUT_2 `source` - Input layer 2. Path to a vector layer.
##' @param FIELD_2 `field` - Table field 2. The name of an existing field. ; delimited list of existing field names.
##' @param FIELDS_TO_COPY `field` - Layer 2 fields to copy (leave empty to copy all fields). The name of an existing field. ; delimited list of existing field names.
##' @param METHOD `enum`  of `("Create separate feature for each matching feature (one-to-many)", "Take attributes of the first matching feature only (one-to-one)")` - Join type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DISCARD_NONMATCHING `boolean` - Discard records which could not be joined. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param PREFIX `string` - Joined field prefix. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `sink` - Joined layer. Path for new vector layer.
##' @param NON_MATCHING `sink` - Unjoinable features from first layer. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * JOINED_COUNT - outputNumber - Number of joined features from input table
##' * NON_MATCHING - outputVector - Unjoinable features from first layer
##' * OUTPUT - outputVector - Joined layer
##' * UNJOINABLE_COUNT - outputNumber - Number of unjoinable features from input table
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_joinattributestable <- function(INPUT = qgisprocess:::qgis_default_value(), FIELD = qgisprocess:::qgis_default_value(), INPUT_2 = qgisprocess:::qgis_default_value(), FIELD_2 = qgisprocess:::qgis_default_value(), FIELDS_TO_COPY = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), DISCARD_NONMATCHING = qgisprocess:::qgis_default_value(), PREFIX = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(), NON_MATCHING = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:joinattributestable")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:joinattributestable", `INPUT` = INPUT, `FIELD` = FIELD, `INPUT_2` = INPUT_2, `FIELD_2` = FIELD_2, `FIELDS_TO_COPY` = FIELDS_TO_COPY, `METHOD` = METHOD, `DISCARD_NONMATCHING` = DISCARD_NONMATCHING, `PREFIX` = PREFIX, `OUTPUT` = OUTPUT, `NON_MATCHING` = NON_MATCHING,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:joinattributestable", `INPUT` = INPUT, `FIELD` = FIELD, `INPUT_2` = INPUT_2, `FIELD_2` = FIELD_2, `FIELDS_TO_COPY` = FIELDS_TO_COPY, `METHOD` = METHOD, `DISCARD_NONMATCHING` = DISCARD_NONMATCHING, `PREFIX` = PREFIX, `OUTPUT` = OUTPUT, `NON_MATCHING` = NON_MATCHING,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "JOINED_COUNT")
  }
}