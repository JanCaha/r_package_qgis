##' QGIS Algorithm provided by QGIS (native c++) Join attributes by location (native:joinattributesbylocation)
##'
##' @title QGIS algorithm Join attributes by location
##'
##' @param INPUT `source` - Join to features in. Path to a vector layer.
##' @param PREDICATE `enum`  of `("intersect", "contain", "equal", "touch", "overlap", "are within", "cross")` - Features they (geometric predicate). Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param JOIN `source` - By comparing to. Path to a vector layer.
##' @param JOIN_FIELDS `field` - Fields to add (leave empty to use all fields). The name of an existing field. ; delimited list of existing field names.
##' @param METHOD `enum`  of `("Create separate feature for each matching feature (one-to-many)", "Take attributes of the first matching feature only (one-to-one)", "Take attributes of the feature with largest overlap only (one-to-one)")` - Join type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DISCARD_NONMATCHING `boolean` - Discard records which could not be joined. 1 for true/yes. 0 for false/no.
##' @param PREFIX `string` - Joined field prefix. String value.
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
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_joinattributesbylocation <- function(INPUT = qgisprocess::qgis_default_value(), PREDICATE = qgisprocess::qgis_default_value(), JOIN = qgisprocess::qgis_default_value(), JOIN_FIELDS = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(), DISCARD_NONMATCHING = qgisprocess::qgis_default_value(), PREFIX = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(), NON_MATCHING = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:joinattributesbylocation")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:joinattributesbylocation", `INPUT` = INPUT, `PREDICATE` = PREDICATE, `JOIN` = JOIN, `JOIN_FIELDS` = JOIN_FIELDS, `METHOD` = METHOD, `DISCARD_NONMATCHING` = DISCARD_NONMATCHING, `PREFIX` = PREFIX, `OUTPUT` = OUTPUT, `NON_MATCHING` = NON_MATCHING,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:joinattributesbylocation", `INPUT` = INPUT, `PREDICATE` = PREDICATE, `JOIN` = JOIN, `JOIN_FIELDS` = JOIN_FIELDS, `METHOD` = METHOD, `DISCARD_NONMATCHING` = DISCARD_NONMATCHING, `PREFIX` = PREFIX, `OUTPUT` = OUTPUT, `NON_MATCHING` = NON_MATCHING,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "JOINED_COUNT")
  }
}