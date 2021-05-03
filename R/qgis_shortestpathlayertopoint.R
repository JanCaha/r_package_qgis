##' QGIS Algorithm provided by QGIS (native c++) Shortest path (layer to point) (native:shortestpathlayertopoint)
##'
##' @title QGIS algorithm Shortest path (layer to point)
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
##' @param START_POINTS `source` - Vector layer with start points. Path to a vector layer.
##' @param END_POINT `point` - End point. Point coordinate as an 'x,y' string, e.g. '1.5,10.1'.
##' @param OUTPUT `sink` - Shortest path. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Shortest path
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_shortestpathlayertopoint <- function(INPUT = qgisprocess::qgis_default_value(), STRATEGY = qgisprocess::qgis_default_value(), DIRECTION_FIELD = qgisprocess::qgis_default_value(), VALUE_FORWARD = qgisprocess::qgis_default_value(), VALUE_BACKWARD = qgisprocess::qgis_default_value(), VALUE_BOTH = qgisprocess::qgis_default_value(), DEFAULT_DIRECTION = qgisprocess::qgis_default_value(), SPEED_FIELD = qgisprocess::qgis_default_value(), DEFAULT_SPEED = qgisprocess::qgis_default_value(), TOLERANCE = qgisprocess::qgis_default_value(), START_POINTS = qgisprocess::qgis_default_value(), END_POINT = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("native:shortestpathlayertopoint")

  output <- qgisprocess::qgis_run_algorithm("native:shortestpathlayertopoint", `INPUT` = INPUT, `STRATEGY` = STRATEGY, `DIRECTION_FIELD` = DIRECTION_FIELD, `VALUE_FORWARD` = VALUE_FORWARD, `VALUE_BACKWARD` = VALUE_BACKWARD, `VALUE_BOTH` = VALUE_BOTH, `DEFAULT_DIRECTION` = DEFAULT_DIRECTION, `SPEED_FIELD` = SPEED_FIELD, `DEFAULT_SPEED` = DEFAULT_SPEED, `TOLERANCE` = TOLERANCE, `START_POINTS` = START_POINTS, `END_POINT` = END_POINT, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}