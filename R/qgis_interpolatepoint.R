##' QGIS Algorithm provided by QGIS (native c++) Interpolate point on line (native:interpolatepoint). Interpolates a point along lines at a set distance. This algorithm creates a point geometry interpolated at a set distance along line or curve geometries.  Z and M values are linearly interpolated from existing values.  If a multipart geometry is encountered, only the first part is considered when interpolating the point.  If the specified distance is greater than the curve's length, the resultant feature will have a null geometry.
##'
##' @title QGIS algorithm - Interpolate point on line
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param DISTANCE `distance` - Distance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `sink` - Interpolated points. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Interpolated points
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_interpolatepoint <- function(INPUT = qgisprocess:::qgis_default_value(), DISTANCE = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:interpolatepoint")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:interpolatepoint", `INPUT` = INPUT, `DISTANCE` = DISTANCE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:interpolatepoint", `INPUT` = INPUT, `DISTANCE` = DISTANCE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}