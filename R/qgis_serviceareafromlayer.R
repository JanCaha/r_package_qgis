##' QGIS Algorithm provided by QGIS (native c++) Service area (from layer) (native:serviceareafromlayer). This algorithm creates a new vector with all the edges or parts of edges of a network line layer that can be reached within a distance or a time, starting from features of a point layer. The distance and the time (both referred to as "travel cost") must be specified respectively in the network layer units or in hours.
##'
##' @title QGIS algorithm - Service area (from layer)
##'
##' @param INPUT `source` - Vector layer representing network. Path to a vector layer.
##' @param STRATEGY `enum`  of `("Shortest", "Fastest")` - Path type to calculate. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DIRECTION_FIELD `field` - Direction field. The name of an existing field. ; delimited list of existing field names.
##' @param VALUE_FORWARD `string` - Value for forward direction. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param VALUE_BACKWARD `string` - Value for backward direction. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param VALUE_BOTH `string` - Value for both directions. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DEFAULT_DIRECTION `enum`  of `("Forward direction", "Backward direction", "Both directions")` - Default direction. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SPEED_FIELD `field` - Speed field. The name of an existing field. ; delimited list of existing field names.
##' @param DEFAULT_SPEED `number` - Default speed (km\code{/}h). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TOLERANCE `distance` - Topology tolerance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param START_POINTS `source` - Vector layer with start points. Path to a vector layer.
##' @param TRAVEL_COST2 `number` - Travel cost (distance for 'Shortest', time for 'Fastest'). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param INCLUDE_BOUNDS `boolean` - Include upper\code{/}lower bound points. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT_LINES `sink` - Service area (lines). Path for new vector layer.
##' @param OUTPUT `sink` - Service area (boundary nodes). Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Service area (boundary nodes)
##' * OUTPUT_LINES - outputVector - Service area (lines)
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_serviceareafromlayer <- function(INPUT = qgisprocess:::qgis_default_value(), STRATEGY = qgisprocess:::qgis_default_value(), DIRECTION_FIELD = qgisprocess:::qgis_default_value(), VALUE_FORWARD = qgisprocess:::qgis_default_value(), VALUE_BACKWARD = qgisprocess:::qgis_default_value(), VALUE_BOTH = qgisprocess:::qgis_default_value(), DEFAULT_DIRECTION = qgisprocess:::qgis_default_value(), SPEED_FIELD = qgisprocess:::qgis_default_value(), DEFAULT_SPEED = qgisprocess:::qgis_default_value(), TOLERANCE = qgisprocess:::qgis_default_value(), START_POINTS = qgisprocess:::qgis_default_value(), TRAVEL_COST2 = qgisprocess:::qgis_default_value(), INCLUDE_BOUNDS = qgisprocess:::qgis_default_value(), OUTPUT_LINES = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:serviceareafromlayer")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:serviceareafromlayer", `INPUT` = INPUT, `STRATEGY` = STRATEGY, `DIRECTION_FIELD` = DIRECTION_FIELD, `VALUE_FORWARD` = VALUE_FORWARD, `VALUE_BACKWARD` = VALUE_BACKWARD, `VALUE_BOTH` = VALUE_BOTH, `DEFAULT_DIRECTION` = DEFAULT_DIRECTION, `SPEED_FIELD` = SPEED_FIELD, `DEFAULT_SPEED` = DEFAULT_SPEED, `TOLERANCE` = TOLERANCE, `START_POINTS` = START_POINTS, `TRAVEL_COST2` = TRAVEL_COST2, `INCLUDE_BOUNDS` = INCLUDE_BOUNDS, `OUTPUT_LINES` = OUTPUT_LINES, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:serviceareafromlayer", `INPUT` = INPUT, `STRATEGY` = STRATEGY, `DIRECTION_FIELD` = DIRECTION_FIELD, `VALUE_FORWARD` = VALUE_FORWARD, `VALUE_BACKWARD` = VALUE_BACKWARD, `VALUE_BOTH` = VALUE_BOTH, `DEFAULT_DIRECTION` = DEFAULT_DIRECTION, `SPEED_FIELD` = SPEED_FIELD, `DEFAULT_SPEED` = DEFAULT_SPEED, `TOLERANCE` = TOLERANCE, `START_POINTS` = START_POINTS, `TRAVEL_COST2` = TRAVEL_COST2, `INCLUDE_BOUNDS` = INCLUDE_BOUNDS, `OUTPUT_LINES` = OUTPUT_LINES, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}