##' QGIS Algorithm provided by SAGA Next Gen Aggregate point observations (sagang:aggregatepointobservations). ---------------- Arguments ----------------  REFERENCE: Reference Points 	Argument type:	source 	Acceptable values: 		- Path to a vector layer REFERENCE_ID: ID 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names OBSERVATIONS: Observations 	Argument type:	source 	Acceptable values: 		- Path to a vector layer X: X 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names Y: Y 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names TRACK: Track 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names DATE: Date 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names TIME: Time 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names PARAMETER: Parameter 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names AGGREGATED: Aggregated 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer TIME_SPAN: Time Span Aggregation 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) ignore 		- 1: (1) floating 		- 2: (2) fixed 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' FIX_TIME: Fixed Time Span (minutes) 	Default value:	20 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression OFF_TIME: Fixed Time Span Offset (minutes) 	Default value:	-10 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression EPS_TIME: Maximum Time Span (Seconds) 	Default value:	60 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression EPS_SPACE: Maximum Distance 	Default value:	100 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression VERBOSE: Verbose 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression POLAR: Polar Coordinates 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Aggregate point observations
##'
##' @param REFERENCE `source` - Reference Points. Path to a vector layer.
##' @param REFERENCE_ID `field` - ID. The name of an existing field. ; delimited list of existing field names.
##' @param OBSERVATIONS `source` - Observations. Path to a vector layer.
##' @param X `field` - X. The name of an existing field. ; delimited list of existing field names.
##' @param Y `field` - Y. The name of an existing field. ; delimited list of existing field names.
##' @param TRACK `field` - Track. The name of an existing field. ; delimited list of existing field names.
##' @param DATE `field` - Date. The name of an existing field. ; delimited list of existing field names.
##' @param TIME `field` - Time. The name of an existing field. ; delimited list of existing field names.
##' @param PARAMETER `field` - Parameter. The name of an existing field. ; delimited list of existing field names.
##' @param AGGREGATED `vectorDestination` - Aggregated. Path for new vector layer.
##' @param TIME_SPAN `enum`  of `("(0) ignore", "(1) floating", "(2) fixed")` - Time Span Aggregation. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param FIX_TIME `number` - Fixed Time Span (minutes). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OFF_TIME `number` - Fixed Time Span Offset (minutes). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param EPS_TIME `number` - Maximum Time Span (Seconds). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param EPS_SPACE `number` - Maximum Distance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param VERBOSE `boolean` - Verbose. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param POLAR `boolean` - Polar Coordinates. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * AGGREGATED - outputVector - Aggregated
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_aggregatepointobservations <- function(REFERENCE = qgisprocess:::qgis_default_value(), REFERENCE_ID = qgisprocess:::qgis_default_value(), OBSERVATIONS = qgisprocess:::qgis_default_value(), X = qgisprocess:::qgis_default_value(), Y = qgisprocess:::qgis_default_value(), TRACK = qgisprocess:::qgis_default_value(), DATE = qgisprocess:::qgis_default_value(), TIME = qgisprocess:::qgis_default_value(), PARAMETER = qgisprocess:::qgis_default_value(), AGGREGATED = qgisprocess:::qgis_default_value(), TIME_SPAN = qgisprocess:::qgis_default_value(), FIX_TIME = qgisprocess:::qgis_default_value(), OFF_TIME = qgisprocess:::qgis_default_value(), EPS_TIME = qgisprocess:::qgis_default_value(), EPS_SPACE = qgisprocess:::qgis_default_value(), VERBOSE = qgisprocess:::qgis_default_value(), POLAR = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:aggregatepointobservations")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:aggregatepointobservations", `REFERENCE` = REFERENCE, `REFERENCE_ID` = REFERENCE_ID, `OBSERVATIONS` = OBSERVATIONS, `X` = X, `Y` = Y, `TRACK` = TRACK, `DATE` = DATE, `TIME` = TIME, `PARAMETER` = PARAMETER, `AGGREGATED` = AGGREGATED, `TIME_SPAN` = TIME_SPAN, `FIX_TIME` = FIX_TIME, `OFF_TIME` = OFF_TIME, `EPS_TIME` = EPS_TIME, `EPS_SPACE` = EPS_SPACE, `VERBOSE` = VERBOSE, `POLAR` = POLAR,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:aggregatepointobservations", `REFERENCE` = REFERENCE, `REFERENCE_ID` = REFERENCE_ID, `OBSERVATIONS` = OBSERVATIONS, `X` = X, `Y` = Y, `TRACK` = TRACK, `DATE` = DATE, `TIME` = TIME, `PARAMETER` = PARAMETER, `AGGREGATED` = AGGREGATED, `TIME_SPAN` = TIME_SPAN, `FIX_TIME` = FIX_TIME, `OFF_TIME` = OFF_TIME, `EPS_TIME` = EPS_TIME, `EPS_SPACE` = EPS_SPACE, `VERBOSE` = VERBOSE, `POLAR` = POLAR,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "AGGREGATED")
  }
}