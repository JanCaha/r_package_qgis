##' QGIS Algorithm provided by QGIS (native c++) Segmentize by maximum angle (native:segmentizebymaxangle). Segmentizes a geometry by converting curved sections to linear sections, given the maximum allowed radius angle between vertices on the straightened geometry. This algorithm segmentizes a geometry by converting curved sections to linear sections.  The segmentization is performed by specifying the maximum allowed radius angle between vertices on the straightened geometry (e.g the angle of the arc created from the original arc center to consecutive output vertices on the linearized geometry).  Non-curved geometries will be retained without change.
##'
##' @title QGIS algorithm - Segmentize by maximum angle
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param ANGLE `number` - Maximum angle between vertices (degrees). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `sink` - Segmentized. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Segmentized
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_segmentizebymaxangle <- function(INPUT = qgisprocess:::qgis_default_value(), ANGLE = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:segmentizebymaxangle")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:segmentizebymaxangle", `INPUT` = INPUT, `ANGLE` = ANGLE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:segmentizebymaxangle", `INPUT` = INPUT, `ANGLE` = ANGLE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}