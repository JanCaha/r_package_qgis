##' QGIS Algorithm provided by SAGA Next Gen Remove duplicate points (sagang:removeduplicatepoints). ---------------- Arguments ----------------  POINTS: Points 	Argument type:	source 	Acceptable values: 		- Path to a vector layer FIELD: Attribute 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names RESULT: Result 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer NUMERIC: Value Aggregation 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) take values from the point to be kept 		- 1: (1) minimum values of all duplicates 		- 2: (2) maximum values of all duplicates 		- 3: (3) mean values of all duplicates 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' METHOD: Point to Keep 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) first point 		- 1: (1) last point 		- 2: (2) point with minimum attribute value 		- 3: (3) point with maximum attribute value 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Remove duplicate points
##'
##' @param POINTS `source` - Points. Path to a vector layer.
##' @param FIELD `field` - Attribute. The name of an existing field. ; delimited list of existing field names.
##' @param RESULT `vectorDestination` - Result. Path for new vector layer.
##' @param NUMERIC `enum`  of `("(0) take values from the point to be kept", "(1) minimum values of all duplicates", "(2) maximum values of all duplicates", "(3) mean values of all duplicates")` - Value Aggregation. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param METHOD `enum`  of `("(0) first point", "(1) last point", "(2) point with minimum attribute value", "(3) point with maximum attribute value")` - Point to Keep. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputVector - Result
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_removeduplicatepoints <- function(POINTS = qgisprocess:::qgis_default_value(), FIELD = qgisprocess:::qgis_default_value(), RESULT = qgisprocess:::qgis_default_value(), NUMERIC = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:removeduplicatepoints")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:removeduplicatepoints", `POINTS` = POINTS, `FIELD` = FIELD, `RESULT` = RESULT, `NUMERIC` = NUMERIC, `METHOD` = METHOD,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:removeduplicatepoints", `POINTS` = POINTS, `FIELD` = FIELD, `RESULT` = RESULT, `NUMERIC` = NUMERIC, `METHOD` = METHOD,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "RESULT")
  }
}