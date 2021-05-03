##' QGIS Algorithm provided by QGIS (native c++) Shortest path (point to point) (native:shortestpathpointtopoint)
##'
##' @title QGIS algorithm Shortest path (point to point)
##'
##' @param INPUT `source` - Vector layer representing network. Path to a vector layer.
##' @param STRATEGY `enum`  of `("Shortest", "Fastest")` - Path type to calculate. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DIRECTION_FIELD `field` - Direction field. The name of an existing field. ; delimited list of existing field names.
##' @param VALUE_FORWARD `string` - Value for forward direction. String value.
##' @param VALUE_BACKWARD `string` - Value for backward direction. String value.
##' @param VALUE_BOTH `string` - Value for both directions. String value.
##' @param DEFAULT_DIRECTION `enum`  of `("Forward direction", "Backward direction", "Both directions")` - Default direction. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SPEED_FIELD `field` - Speed field. The name of an existing field. ; delimited list of existing field names.
##' @param DEFAULT_SPEED `number` - Default speed (km/h). A numeric value.
##' @param TOLERANCE `distance` - Topology tolerance. A numeric value.
##' @param START_POINT `point` - Start point. Point coordinate as an 'x,y' string, e.g. '1.5,10.1'.
##' @param END_POINT `point` - End point. Point coordinate as an 'x,y' string, e.g. '1.5,10.1'.
##' @param OUTPUT `sink` - Shortest path. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Shortest path
##' * TRAVEL_COST - outputNumber - Travel cost
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_shortestpathpointtopoint <- function(INPUT = qgisprocess::qgis_default_value(), STRATEGY = qgisprocess::qgis_default_value(), DIRECTION_FIELD = qgisprocess::qgis_default_value(), VALUE_FORWARD = qgisprocess::qgis_default_value(), VALUE_BACKWARD = qgisprocess::qgis_default_value(), VALUE_BOTH = qgisprocess::qgis_default_value(), DEFAULT_DIRECTION = qgisprocess::qgis_default_value(), SPEED_FIELD = qgisprocess::qgis_default_value(), DEFAULT_SPEED = qgisprocess::qgis_default_value(), TOLERANCE = qgisprocess::qgis_default_value(), START_POINT = qgisprocess::qgis_default_value(), END_POINT = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("native:shortestpathpointtopoint")
  output <- qgisprocess::qgis_run_algorithm("native:shortestpathpointtopoint",`INPUT` = INPUT, `STRATEGY` = STRATEGY, `DIRECTION_FIELD` = DIRECTION_FIELD, `VALUE_FORWARD` = VALUE_FORWARD, `VALUE_BACKWARD` = VALUE_BACKWARD, `VALUE_BOTH` = VALUE_BOTH, `DEFAULT_DIRECTION` = DEFAULT_DIRECTION, `SPEED_FIELD` = SPEED_FIELD, `DEFAULT_SPEED` = DEFAULT_SPEED, `TOLERANCE` = TOLERANCE, `START_POINT` = START_POINT, `END_POINT` = END_POINT, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}