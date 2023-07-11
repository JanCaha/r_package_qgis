##' QGIS Algorithm provided by SAGA Next Gen Split lines with lines (sagang:splitlineswithlines). ---------------- Arguments ----------------  LINES: Lines 	Argument type:	source 	Acceptable values: 		- Path to a vector layer SPLIT: Split Features 	Argument type:	source 	Acceptable values: 		- Path to a vector layer INTERSECT: Intersection 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer OUTPUT: Output 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) polylines 		- 1: (1) separate lines 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Split lines with lines
##'
##' @param LINES `source` - Lines. Path to a vector layer.
##' @param SPLIT `source` - Split Features. Path to a vector layer.
##' @param INTERSECT `vectorDestination` - Intersection. Path for new vector layer.
##' @param OUTPUT `enum`  of `("(0) polylines", "(1) separate lines")` - Output. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * INTERSECT - outputVector - Intersection
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_splitlineswithlines <- function(LINES = qgisprocess:::qgis_default_value(), SPLIT = qgisprocess:::qgis_default_value(), INTERSECT = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:splitlineswithlines")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:splitlineswithlines", `LINES` = LINES, `SPLIT` = SPLIT, `INTERSECT` = INTERSECT, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:splitlineswithlines", `LINES` = LINES, `SPLIT` = SPLIT, `INTERSECT` = INTERSECT, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "INTERSECT")
  }
}