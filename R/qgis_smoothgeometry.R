##' QGIS Algorithm provided by QGIS (native c++) Smooth (native:smoothgeometry). This algorithm smooths the geometries in a line or polygon layer. It creates a new layer with the same features as the ones in the input layer, but with geometries containing a higher number of vertices and corners in the geometries smoothed out.  The iterations parameter dictates how many smoothing iterations will be applied to each geometry. A higher number of iterations results in smoother geometries with the cost of greater number of nodes in the geometries.  The offset parameter controls how "tightly" the smoothed geometries follow the original geometries. Smaller values results in a tighter fit, and larger values will create a looser fit.  The maximum angle parameter can be used to prevent smoothing of nodes with large angles. Any node where the angle of the segments to either side is larger than this will not be smoothed. For example, setting the maximum angle to 90 degrees or lower would preserve right angles in the geometry.  If input geometries contain Z or M values, these will also be smoothed and the output geometry will retain the same dimensionality as the input geometry.
##'
##' @title QGIS algorithm - Smooth
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param ITERATIONS `number` - Iterations. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OFFSET `number` - Offset. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param MAX_ANGLE `number` - Maximum node angle to smooth. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `sink` - Smoothed. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Smoothed
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_smoothgeometry <- function(INPUT = qgisprocess:::qgis_default_value(), ITERATIONS = qgisprocess:::qgis_default_value(), OFFSET = qgisprocess:::qgis_default_value(), MAX_ANGLE = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:smoothgeometry")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:smoothgeometry", `INPUT` = INPUT, `ITERATIONS` = ITERATIONS, `OFFSET` = OFFSET, `MAX_ANGLE` = MAX_ANGLE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:smoothgeometry", `INPUT` = INPUT, `ITERATIONS` = ITERATIONS, `OFFSET` = OFFSET, `MAX_ANGLE` = MAX_ANGLE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}