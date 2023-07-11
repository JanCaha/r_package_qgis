##' QGIS Algorithm provided by SAGA Next Gen Points filter (sagang:pointsfilter). ---------------- Arguments ----------------  POINTS: Points 	Argument type:	source 	Acceptable values: 		- Path to a vector layer FIELD: Attribute 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names FILTER: Filtered Points 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer RADIUS: Radius 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression MINNUM: Minimum Number of Points 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression MAXNUM: Maximum Number of Points 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression QUADRANTS: Quadrants 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression METHOD: Filter Criterion 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) keep maxima (with tolerance) 		- 1: (1) keep minima (with tolerance) 		- 2: (2) remove maxima (with tolerance) 		- 3: (3) remove minima (with tolerance) 		- 4: (4) remove below percentile 		- 5: (5) remove above percentile 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' TOLERANCE: Tolerance 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression PERCENT: Percentile 	Default value:	50 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Points filter
##'
##' @param POINTS `source` - Points. Path to a vector layer.
##' @param FIELD `field` - Attribute. The name of an existing field. ; delimited list of existing field names.
##' @param FILTER `vectorDestination` - Filtered Points. Path for new vector layer.
##' @param RADIUS `number` - Radius. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param MINNUM `number` - Minimum Number of Points. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param MAXNUM `number` - Maximum Number of Points. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param QUADRANTS `boolean` - Quadrants. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param METHOD `enum`  of `("(0) keep maxima (with tolerance)", "(1) keep minima (with tolerance)", "(2) remove maxima (with tolerance)", "(3) remove minima (with tolerance)", "(4) remove below percentile", "(5) remove above percentile")` - Filter Criterion. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param TOLERANCE `number` - Tolerance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param PERCENT `number` - Percentile. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
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

sagang_pointsfilter <- function(POINTS = qgisprocess:::qgis_default_value(), FIELD = qgisprocess:::qgis_default_value(), FILTER = qgisprocess:::qgis_default_value(), RADIUS = qgisprocess:::qgis_default_value(), MINNUM = qgisprocess:::qgis_default_value(), MAXNUM = qgisprocess:::qgis_default_value(), QUADRANTS = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), TOLERANCE = qgisprocess:::qgis_default_value(), PERCENT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:pointsfilter")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:pointsfilter", `POINTS` = POINTS, `FIELD` = FIELD, `FILTER` = FILTER, `RADIUS` = RADIUS, `MINNUM` = MINNUM, `MAXNUM` = MAXNUM, `QUADRANTS` = QUADRANTS, `METHOD` = METHOD, `TOLERANCE` = TOLERANCE, `PERCENT` = PERCENT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:pointsfilter", `POINTS` = POINTS, `FIELD` = FIELD, `FILTER` = FILTER, `RADIUS` = RADIUS, `MINNUM` = MINNUM, `MAXNUM` = MAXNUM, `QUADRANTS` = QUADRANTS, `METHOD` = METHOD, `TOLERANCE` = TOLERANCE, `PERCENT` = PERCENT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "FILTER")
  }
}