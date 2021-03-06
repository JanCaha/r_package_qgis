##' QGIS Algorithm provided by QGIS Join attributes by location (summary) (qgis:joinbylocationsummary)
##'
##' @title QGIS algorithm Join attributes by location (summary)
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param JOIN `source` - Join layer. Path to a vector layer.
##' @param PREDICATE `enum`  of `("intersects", "contains", "equals", "touches", "overlaps", "within", "crosses")` - Geometric predicate. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param JOIN_FIELDS `field` - Fields to summarise (leave empty to use all fields). The name of an existing field. ; delimited list of existing field names.
##' @param SUMMARIES `enum`  of `("count", "unique", "min", "max", "range", "sum", "mean", "median", "stddev", "minority", "majority", "q1", "q3", "iqr", "empty", "filled", "min_length", "max_length", "mean_length")` - Summaries to calculate (leave empty to use all available). Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DISCARD_NONMATCHING `boolean` - Discard records which could not be joined. 1 for true/yes. 0 for false/no.
##' @param OUTPUT `sink` - Joined layer. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Joined layer
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_joinbylocationsummary <- function(INPUT = qgisprocess::qgis_default_value(), JOIN = qgisprocess::qgis_default_value(), PREDICATE = qgisprocess::qgis_default_value(), JOIN_FIELDS = qgisprocess::qgis_default_value(), SUMMARIES = qgisprocess::qgis_default_value(), DISCARD_NONMATCHING = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("qgis:joinbylocationsummary")

  output <- qgisprocess::qgis_run_algorithm("qgis:joinbylocationsummary", `INPUT` = INPUT, `JOIN` = JOIN, `PREDICATE` = PREDICATE, `JOIN_FIELDS` = JOIN_FIELDS, `SUMMARIES` = SUMMARIES, `DISCARD_NONMATCHING` = DISCARD_NONMATCHING, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}