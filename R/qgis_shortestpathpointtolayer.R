##' QGIS Algorithm provided by QGIS (native c++) Shortest path (point to layer) (native:shortestpathpointtolayer). Computes optimal (shortest or fastest) route between a given start point and multiple end points defined by a point vector layer. This algorithm computes optimal (shortest or fastest) route between a given start point and multiple end points defined by a point vector layer.  ---------------- Notes ----------------   - This algorithm drops existing primary keys or FID values and regenerates them in output layers.
##'
##' @title QGIS algorithm - Shortest path (point to layer)
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
##' @param START_POINT `point` - Start point. Point coordinate as an 'x,y' string, e.g. '1.5,10.1'.
##' @param END_POINTS `source` - Vector layer with end points. Path to a vector layer.
##' @param POINT_TOLERANCE `distance` - Maximum point distance from network. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `sink` - Shortest path. Path for new vector layer.
##' @param OUTPUT_NON_ROUTABLE `sink` - Non-routable features. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Shortest path
##' * OUTPUT_NON_ROUTABLE - outputVector - Non-routable features
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_shortestpathpointtolayer <- function(INPUT = qgisprocess:::qgis_default_value(), STRATEGY = qgisprocess:::qgis_default_value(), DIRECTION_FIELD = qgisprocess:::qgis_default_value(), VALUE_FORWARD = qgisprocess:::qgis_default_value(), VALUE_BACKWARD = qgisprocess:::qgis_default_value(), VALUE_BOTH = qgisprocess:::qgis_default_value(), DEFAULT_DIRECTION = qgisprocess:::qgis_default_value(), SPEED_FIELD = qgisprocess:::qgis_default_value(), DEFAULT_SPEED = qgisprocess:::qgis_default_value(), TOLERANCE = qgisprocess:::qgis_default_value(), START_POINT = qgisprocess:::qgis_default_value(), END_POINTS = qgisprocess:::qgis_default_value(), POINT_TOLERANCE = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(), OUTPUT_NON_ROUTABLE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:shortestpathpointtolayer")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:shortestpathpointtolayer", `INPUT` = INPUT, `STRATEGY` = STRATEGY, `DIRECTION_FIELD` = DIRECTION_FIELD, `VALUE_FORWARD` = VALUE_FORWARD, `VALUE_BACKWARD` = VALUE_BACKWARD, `VALUE_BOTH` = VALUE_BOTH, `DEFAULT_DIRECTION` = DEFAULT_DIRECTION, `SPEED_FIELD` = SPEED_FIELD, `DEFAULT_SPEED` = DEFAULT_SPEED, `TOLERANCE` = TOLERANCE, `START_POINT` = START_POINT, `END_POINTS` = END_POINTS, `POINT_TOLERANCE` = POINT_TOLERANCE, `OUTPUT` = OUTPUT, `OUTPUT_NON_ROUTABLE` = OUTPUT_NON_ROUTABLE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:shortestpathpointtolayer", `INPUT` = INPUT, `STRATEGY` = STRATEGY, `DIRECTION_FIELD` = DIRECTION_FIELD, `VALUE_FORWARD` = VALUE_FORWARD, `VALUE_BACKWARD` = VALUE_BACKWARD, `VALUE_BOTH` = VALUE_BOTH, `DEFAULT_DIRECTION` = DEFAULT_DIRECTION, `SPEED_FIELD` = SPEED_FIELD, `DEFAULT_SPEED` = DEFAULT_SPEED, `TOLERANCE` = TOLERANCE, `START_POINT` = START_POINT, `END_POINTS` = END_POINTS, `POINT_TOLERANCE` = POINT_TOLERANCE, `OUTPUT` = OUTPUT, `OUTPUT_NON_ROUTABLE` = OUTPUT_NON_ROUTABLE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}