##' QGIS Algorithm provided by SAGA Next Gen Polygon update (sagang:polygonupdate). ---------------- Arguments ----------------  A: Layer A 	Argument type:	source 	Acceptable values: 		- Path to a vector layer B: Layer B 	Argument type:	source 	Acceptable values: 		- Path to a vector layer RESULT: Update 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer SPLIT: Split Parts 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Polygon update
##'
##' @param A `source` - Layer A. Path to a vector layer.
##' @param B `source` - Layer B. Path to a vector layer.
##' @param RESULT `vectorDestination` - Update. Path for new vector layer.
##' @param SPLIT `boolean` - Split Parts. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputVector - Update
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_polygonupdate <- function(A = qgisprocess:::qgis_default_value(), B = qgisprocess:::qgis_default_value(), RESULT = qgisprocess:::qgis_default_value(), SPLIT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:polygonupdate")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:polygonupdate", `A` = A, `B` = B, `RESULT` = RESULT, `SPLIT` = SPLIT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:polygonupdate", `A` = A, `B` = B, `RESULT` = RESULT, `SPLIT` = SPLIT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "RESULT")
  }
}