##' QGIS Algorithm provided by SAGA Next Gen Point to line distances (sagang:pointtolinedistances). ---------------- Arguments ----------------  POINTS: Points 	Argument type:	source 	Acceptable values: 		- Path to a vector layer RESULT: Result 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer DISTANCES: Distances 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer LINES: Lines 	Argument type:	source 	Acceptable values: 		- Path to a vector layer LINE_ID: Identifier 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names
##'
##' @title QGIS algorithm - Point to line distances
##'
##' @param POINTS `source` - Points. Path to a vector layer.
##' @param RESULT `vectorDestination` - Result. Path for new vector layer.
##' @param DISTANCES `vectorDestination` - Distances. Path for new vector layer.
##' @param LINES `source` - Lines. Path to a vector layer.
##' @param LINE_ID `field` - Identifier. The name of an existing field. ; delimited list of existing field names.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * DISTANCES - outputVector - Distances
##' * RESULT - outputVector - Result
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_pointtolinedistances <- function(POINTS = qgisprocess:::qgis_default_value(), RESULT = qgisprocess:::qgis_default_value(), DISTANCES = qgisprocess:::qgis_default_value(), LINES = qgisprocess:::qgis_default_value(), LINE_ID = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:pointtolinedistances")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:pointtolinedistances", `POINTS` = POINTS, `RESULT` = RESULT, `DISTANCES` = DISTANCES, `LINES` = LINES, `LINE_ID` = LINE_ID,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:pointtolinedistances", `POINTS` = POINTS, `RESULT` = RESULT, `DISTANCES` = DISTANCES, `LINES` = LINES, `LINE_ID` = LINE_ID,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "DISTANCES")
  }
}