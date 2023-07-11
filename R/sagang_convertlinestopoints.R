##' QGIS Algorithm provided by SAGA Next Gen Convert lines to points (sagang:convertlinestopoints). ---------------- Arguments ----------------  LINES: Lines 	Argument type:	source 	Acceptable values: 		- Path to a vector layer POINTS: Points 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer ADD: Insert Additional Points 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression METHOD_INSERT: Insertion 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) per line segment 		- 1: (1) per line 		- 2: (2) from line center 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' DIST: Insertion Distance 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression ADD_POINT_ORDER: Add Point Order 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Convert lines to points
##'
##' @param LINES `source` - Lines. Path to a vector layer.
##' @param POINTS `vectorDestination` - Points. Path for new vector layer.
##' @param ADD `boolean` - Insert Additional Points. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param METHOD_INSERT `enum`  of `("(0) per line segment", "(1) per line", "(2) from line center")` - Insertion. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DIST `number` - Insertion Distance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ADD_POINT_ORDER `boolean` - Add Point Order. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * POINTS - outputVector - Points
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_convertlinestopoints <- function(LINES = qgisprocess:::qgis_default_value(), POINTS = qgisprocess:::qgis_default_value(), ADD = qgisprocess:::qgis_default_value(), METHOD_INSERT = qgisprocess:::qgis_default_value(), DIST = qgisprocess:::qgis_default_value(), ADD_POINT_ORDER = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:convertlinestopoints")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:convertlinestopoints", `LINES` = LINES, `POINTS` = POINTS, `ADD` = ADD, `METHOD_INSERT` = METHOD_INSERT, `DIST` = DIST, `ADD_POINT_ORDER` = ADD_POINT_ORDER,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:convertlinestopoints", `LINES` = LINES, `POINTS` = POINTS, `ADD` = ADD, `METHOD_INSERT` = METHOD_INSERT, `DIST` = DIST, `ADD_POINT_ORDER` = ADD_POINT_ORDER,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "POINTS")
  }
}