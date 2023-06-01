##' QGIS Algorithm provided by SAGA Split shapes layer randomly (saga:splitshapeslayerrandomly)
##'
##' @title QGIS algorithm Split shapes layer randomly
##'
##' @param SHAPES `source` - Shapes. Path to a vector layer.
##' @param PERCENT `number` - Split ratio (%). A numeric value.
##' @param A `vectorDestination` - Group A. Path for new vector layer.
##' @param B `vectorDestination` - Group B. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * A - outputVector - Group A
##' * B - outputVector - Group B
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

saga_splitshapeslayerrandomly <- function(SHAPES = qgisprocess:::qgis_default_value(), PERCENT = qgisprocess:::qgis_default_value(), A = qgisprocess:::qgis_default_value(), B = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:splitshapeslayerrandomly")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:splitshapeslayerrandomly", `SHAPES` = SHAPES, `PERCENT` = PERCENT, `A` = A, `B` = B,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:splitshapeslayerrandomly", `SHAPES` = SHAPES, `PERCENT` = PERCENT, `A` = A, `B` = B,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "A")
  }
}