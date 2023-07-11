##' QGIS Algorithm provided by QGIS (native c++) Geodesic line split at antimeridian (native:antimeridiansplit). Splits lines into multiple geodesic segments when the line crosses the antimeridian (±180 degrees longitude). This algorithm splits a line into multiple geodesic segments, whenever the line crosses the antimeridian (±180 degrees longitude).  Splitting at the antimeridian helps the visual display of the lines in some projections. The returned geometry will always be a multi-part geometry.  Whenever line segments in the input geometry cross the antimeridian, they will be split into two segments, with the latitude of the breakpoint being determined using a geodesic line connecting the points either side of this segment. The current project ellipsoid setting will be used when calculating this breakpoint.  If the input geometry contains M or Z values, these will be linearly interpolated for the new vertices created at the antimeridian.
##'
##' @title QGIS algorithm - Geodesic line split at antimeridian
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param OUTPUT `sink` - Split. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Split
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_antimeridiansplit <- function(INPUT = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:antimeridiansplit")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:antimeridiansplit", `INPUT` = INPUT, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:antimeridiansplit", `INPUT` = INPUT, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}