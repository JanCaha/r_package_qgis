##' QGIS Algorithm provided by SAGA Symmetrical difference (saga:symmetricaldifference)
##'
##' @title QGIS algorithm Symmetrical difference
##'
##' @param A `source` - Layer A. Path to a vector layer.
##' @param B `source` - Layer B. Path to a vector layer.
##' @param SPLIT `boolean` - Split Parts. 1 for true/yes. 0 for false/no.
##' @param RESULT `vectorDestination` - Symmetrical Difference. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputVector - Symmetrical Difference
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

saga_symmetricaldifference <- function(A = qgisprocess:::qgis_default_value(), B = qgisprocess:::qgis_default_value(), SPLIT = qgisprocess:::qgis_default_value(), RESULT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:symmetricaldifference")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:symmetricaldifference", `A` = A, `B` = B, `SPLIT` = SPLIT, `RESULT` = RESULT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:symmetricaldifference", `A` = A, `B` = B, `SPLIT` = SPLIT, `RESULT` = RESULT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "RESULT")
  }
}