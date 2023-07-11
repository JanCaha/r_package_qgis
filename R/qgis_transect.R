##' QGIS Algorithm provided by QGIS (native c++) Transect (native:transect). This algorithm creates transects on vertices for (multi)linestring. A transect is a line oriented from an angle (by default perpendicular) to the input polylines (at vertices).  Field(s) from feature(s) are returned in the transect with these new fields: - TR_FID: ID of the original feature - TR_ID: ID of the transect. Each transect have an unique ID - TR_SEGMENT: ID of the segment of the linestring - TR_ANGLE: Angle in degrees from the original line at the vertex - TR_LENGTH: Total length of the transect returned - TR_ORIENT: Side of the transect (only on the left or right of the line, or both side)
##'
##' @title QGIS algorithm - Transect
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param LENGTH `distance` - Length of the transect. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ANGLE `number` - Angle in degrees from the original line at the vertices. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SIDE `enum`  of `("Left", "Right", "Both")` - Side to create the transects. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param OUTPUT `sink` - Transect. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Transect
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_transect <- function(INPUT = qgisprocess:::qgis_default_value(), LENGTH = qgisprocess:::qgis_default_value(), ANGLE = qgisprocess:::qgis_default_value(), SIDE = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:transect")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:transect", `INPUT` = INPUT, `LENGTH` = LENGTH, `ANGLE` = ANGLE, `SIDE` = SIDE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:transect", `INPUT` = INPUT, `LENGTH` = LENGTH, `ANGLE` = ANGLE, `SIDE` = SIDE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}