##' QGIS Algorithm provided by SAGA Points filter (saga:pointsfilter)
##'
##' @title QGIS algorithm Points filter
##'
##' @param POINTS `source` - Points. Path to a vector layer.
##' @param FIELD `field` - Attribute. The name of an existing field. ; delimited list of existing field names.
##' @param RADIUS `number` - Radius. A numeric value.
##' @param MINNUM `number` - Minimum Number of Points. A numeric value.
##' @param MAXNUM `number` - Maximum Number of Points. A numeric value.
##' @param METHOD `enum`  of `("[0] keep maxima (with tolerance)", "[1] keep minima (with tolerance)", "[2] remove maxima (with tolerance)", "[3] remove minima (with tolerance)", "[4] remove below percentile", "[5] remove above percentile")` - Filter Criterion. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param TOLERANCE `number` - Tolerance. A numeric value.
##' @param PERCENT `number` - Percentile. A numeric value.
##' @param FILTER `vectorDestination` - Filtered Points. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * FILTER - outputVector - Filtered Points
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

saga_pointsfilter <- function(POINTS = qgisprocess:::qgis_default_value(), FIELD = qgisprocess:::qgis_default_value(), RADIUS = qgisprocess:::qgis_default_value(), MINNUM = qgisprocess:::qgis_default_value(), MAXNUM = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), TOLERANCE = qgisprocess:::qgis_default_value(), PERCENT = qgisprocess:::qgis_default_value(), FILTER = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:pointsfilter")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:pointsfilter", `POINTS` = POINTS, `FIELD` = FIELD, `RADIUS` = RADIUS, `MINNUM` = MINNUM, `MAXNUM` = MAXNUM, `METHOD` = METHOD, `TOLERANCE` = TOLERANCE, `PERCENT` = PERCENT, `FILTER` = FILTER,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:pointsfilter", `POINTS` = POINTS, `FIELD` = FIELD, `RADIUS` = RADIUS, `MINNUM` = MINNUM, `MAXNUM` = MAXNUM, `METHOD` = METHOD, `TOLERANCE` = TOLERANCE, `PERCENT` = PERCENT, `FILTER` = FILTER,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "FILTER")
  }
}