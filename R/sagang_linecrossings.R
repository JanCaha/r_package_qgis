##' QGIS Algorithm provided by SAGA Next Gen Line crossings (sagang:linecrossings). ---------------- Arguments ----------------  LINES_A: 1st Lines Layer 	Argument type:	source 	Acceptable values: 		- Path to a vector layer LINES_B: 2nd Lines Layer 	Argument type:	source 	Acceptable values: 		- Path to a vector layer CROSSINGS: Crossings 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer ATTRIBUTES: Parent Attributes 	Default value:	2 	Argument type:	enum 	Available values: 		- 0: (0) index 		- 1: (1) attributes 		- 2: (2) index and attributes 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Line crossings
##'
##' @param LINES_A `source` - 1st Lines Layer. Path to a vector layer.
##' @param LINES_B `source` - 2nd Lines Layer. Path to a vector layer.
##' @param CROSSINGS `vectorDestination` - Crossings. Path for new vector layer.
##' @param ATTRIBUTES `enum`  of `("(0) index", "(1) attributes", "(2) index and attributes")` - Parent Attributes. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * CROSSINGS - outputVector - Crossings
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_linecrossings <- function(LINES_A = qgisprocess:::qgis_default_value(), LINES_B = qgisprocess:::qgis_default_value(), CROSSINGS = qgisprocess:::qgis_default_value(), ATTRIBUTES = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:linecrossings")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:linecrossings", `LINES_A` = LINES_A, `LINES_B` = LINES_B, `CROSSINGS` = CROSSINGS, `ATTRIBUTES` = ATTRIBUTES,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:linecrossings", `LINES_A` = LINES_A, `LINES_B` = LINES_B, `CROSSINGS` = CROSSINGS, `ATTRIBUTES` = ATTRIBUTES,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "CROSSINGS")
  }
}