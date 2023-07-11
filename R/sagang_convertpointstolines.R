##' QGIS Algorithm provided by SAGA Next Gen Convert points to line(s) (sagang:convertpointstolines). ---------------- Arguments ----------------  LINES: Lines 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer POINTS: Points 	Argument type:	source 	Acceptable values: 		- Path to a vector layer ORDER: Order by... 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names SEPARATE: Separate by... 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names ELEVATION: Elevation 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names
##'
##' @title QGIS algorithm - Convert points to line(s)
##'
##' @param LINES `vectorDestination` - Lines. Path for new vector layer.
##' @param POINTS `source` - Points. Path to a vector layer.
##' @param ORDER `field` - Order by.... The name of an existing field. ; delimited list of existing field names.
##' @param SEPARATE `field` - Separate by.... The name of an existing field. ; delimited list of existing field names.
##' @param ELEVATION `field` - Elevation. The name of an existing field. ; delimited list of existing field names.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * LINES - outputVector - Lines
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_convertpointstolines <- function(LINES = qgisprocess:::qgis_default_value(), POINTS = qgisprocess:::qgis_default_value(), ORDER = qgisprocess:::qgis_default_value(), SEPARATE = qgisprocess:::qgis_default_value(), ELEVATION = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:convertpointstolines")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:convertpointstolines", `LINES` = LINES, `POINTS` = POINTS, `ORDER` = ORDER, `SEPARATE` = SEPARATE, `ELEVATION` = ELEVATION,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:convertpointstolines", `LINES` = LINES, `POINTS` = POINTS, `ORDER` = ORDER, `SEPARATE` = SEPARATE, `ELEVATION` = ELEVATION,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "LINES")
  }
}