##' QGIS Algorithm provided by QGIS (native c++) Extract by expression (native:extractbyexpression)
##'
##' @title QGIS algorithm Extract by expression
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param EXPRESSION `expression` - Expression. A valid QGIS expression string, e.g "road_name" = 'MAIN RD'.
##' @param OUTPUT `sink` - Matching features. Path for new vector layer.
##' @param FAIL_OUTPUT `sink` - Non-matching. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * FAIL_OUTPUT - outputVector - Non-matching
##' * OUTPUT - outputVector - Matching features
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_extractbyexpression <- function(INPUT = qgisprocess:::qgis_default_value(), EXPRESSION = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(), FAIL_OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:extractbyexpression")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:extractbyexpression", `INPUT` = INPUT, `EXPRESSION` = EXPRESSION, `OUTPUT` = OUTPUT, `FAIL_OUTPUT` = FAIL_OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:extractbyexpression", `INPUT` = INPUT, `EXPRESSION` = EXPRESSION, `OUTPUT` = OUTPUT, `FAIL_OUTPUT` = FAIL_OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "FAIL_OUTPUT")
  }
}