##' QGIS Algorithm provided by QGIS Join attributes by location (summary) (qgis:joinbylocationsummary). This algorithm takes an input vector layer and creates a new vector layer that is an extended version of the input one, with additional attributes in its attribute table. The additional attributes and their values are taken from a second vector layer. A spatial criteria is applied to select the values from the second layer that are added to each feature from the first layer in the resulting one. The algorithm calculates a statistical summary for the values from matching features in the second layer (e.g. maximum value, mean value, etc).
##'
##' @title QGIS algorithm - Join attributes by location (summary)
##'
##' @param INPUT `source` - Join to features in. Path to a vector layer.
##' @param PREDICATE `enum`  of `("intersect", "contain", "equal", "touch", "overlap", "are within", "cross")` - Where the features. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param JOIN `source` - By comparing to. Path to a vector layer.
##' @param JOIN_FIELDS `field` - Fields to summarise (leave empty to use all fields). The name of an existing field. ; delimited list of existing field names.
##' @param SUMMARIES `enum`  of `("count", "unique", "min", "max", "range", "sum", "mean", "median", "stddev", "minority", "majority", "q1", "q3", "iqr", "empty", "filled", "min_length", "max_length", "mean_length")` - Summaries to calculate (leave empty to use all available). Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DISCARD_NONMATCHING `boolean` - Discard records which could not be joined. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `sink` - Joined layer. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Joined layer
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_joinbylocationsummary <- function(INPUT = qgisprocess:::qgis_default_value(), PREDICATE = qgisprocess:::qgis_default_value(), JOIN = qgisprocess:::qgis_default_value(), JOIN_FIELDS = qgisprocess:::qgis_default_value(), SUMMARIES = qgisprocess:::qgis_default_value(), DISCARD_NONMATCHING = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("qgis:joinbylocationsummary")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("qgis:joinbylocationsummary", `INPUT` = INPUT, `PREDICATE` = PREDICATE, `JOIN` = JOIN, `JOIN_FIELDS` = JOIN_FIELDS, `SUMMARIES` = SUMMARIES, `DISCARD_NONMATCHING` = DISCARD_NONMATCHING, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("qgis:joinbylocationsummary", `INPUT` = INPUT, `PREDICATE` = PREDICATE, `JOIN` = JOIN, `JOIN_FIELDS` = JOIN_FIELDS, `SUMMARIES` = SUMMARIES, `DISCARD_NONMATCHING` = DISCARD_NONMATCHING, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}