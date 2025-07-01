##' QGIS Algorithm provided by QGIS (native c++) Orthogonalize (native:orthogonalize). Takes a line or polygon layer and attempts to orthogonalize all the geometries in the layer. Takes a line or polygon layer and attempts to orthogonalize all the geometries in the layer. This process shifts the nodes in the geometries to try to make every angle in the geometry either a right angle or a straight line.  The angle tolerance parameter is used to specify the maximum deviation from a right angle or straight line a node can have for it to be adjusted. Smaller tolerances mean that only nodes which are already closer to right angles will be adjusted, and larger tolerances mean that nodes which deviate further from right angles will also be adjusted.  The algorithm is iterative. Setting a larger number for the maximum iterations will result in a more orthogonal geometry at the cost of extra processing time.
##'
##' @title QGIS algorithm - Orthogonalize
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param ANGLE_TOLERANCE `number` - Maximum angle tolerance (degrees). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param MAX_ITERATIONS `number` - Maximum algorithm iterations. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `sink` - Orthogonalized. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Orthogonalized
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_orthogonalize <- function(INPUT = qgisprocess:::qgis_default_value(), ANGLE_TOLERANCE = qgisprocess:::qgis_default_value(), MAX_ITERATIONS = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:orthogonalize")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:orthogonalize", `INPUT` = INPUT, `ANGLE_TOLERANCE` = ANGLE_TOLERANCE, `MAX_ITERATIONS` = MAX_ITERATIONS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:orthogonalize", `INPUT` = INPUT, `ANGLE_TOLERANCE` = ANGLE_TOLERANCE, `MAX_ITERATIONS` = MAX_ITERATIONS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}