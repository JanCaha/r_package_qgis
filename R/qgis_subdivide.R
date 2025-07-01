##' QGIS Algorithm provided by QGIS (native c++) Subdivide (native:subdivide). Subdivides the geometry into parts that have less than a specified maximum number of nodes. This algorithm subdivides the geometry. The returned geometry will be a collection containing subdivided parts from the original geometry, where no part has more than the specified maximum number of nodes.  This is useful for dividing a complex geometry into less complex parts, which are better able to be spatially indexed and faster to perform further operations such as intersects on. The returned geometry parts may not be valid and may contain self-intersections.  Curved geometries will be segmentized before subdivision.
##'
##' @title QGIS algorithm - Subdivide
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param MAX_NODES `number` - Maximum nodes in parts. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `sink` - Subdivided. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Subdivided
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_subdivide <- function(INPUT = qgisprocess:::qgis_default_value(), MAX_NODES = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:subdivide")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:subdivide", `INPUT` = INPUT, `MAX_NODES` = MAX_NODES, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:subdivide", `INPUT` = INPUT, `MAX_NODES` = MAX_NODES, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}