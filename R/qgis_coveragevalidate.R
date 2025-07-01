##' QGIS Algorithm provided by QGIS (native c++) Validate coverage (native:coveragevalidate). Analyzes a coverage of polygon features to find places where the assumption of exactly matching edges is not met. This algorithm analyzes a coverage (represented as a set of polygon features with exactly matching edge geometry) to find places where the assumption of exactly matching edges is not met.  Invalidity includes polygons that overlap or that have gaps smaller than the specified gap width.
##'
##' @title QGIS algorithm - Validate coverage
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param GAP_WIDTH `distance` - Gap width. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param INVALID_EDGES `sink` - Invalid edges. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * INVALID_EDGES - outputVector - Invalid edges
##' * IS_VALID - outputBoolean - Coverage is valid
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_coveragevalidate <- function(INPUT = qgisprocess:::qgis_default_value(), GAP_WIDTH = qgisprocess:::qgis_default_value(), INVALID_EDGES = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:coveragevalidate")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:coveragevalidate", `INPUT` = INPUT, `GAP_WIDTH` = GAP_WIDTH, `INVALID_EDGES` = INVALID_EDGES,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:coveragevalidate", `INPUT` = INPUT, `GAP_WIDTH` = GAP_WIDTH, `INVALID_EDGES` = INVALID_EDGES,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "INVALID_EDGES")
  }
}