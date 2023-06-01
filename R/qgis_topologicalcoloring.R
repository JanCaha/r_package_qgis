##' QGIS Algorithm provided by QGIS Topological coloring (qgis:topologicalcoloring)
##'
##' @title QGIS algorithm Topological coloring
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param MIN_COLORS `number` - Minimum number of colors. A numeric value.
##' @param MIN_DISTANCE `distance` - Minimum distance between features. A numeric value.
##' @param BALANCE `enum`  of `("By feature count", "By assigned area", "By distance between colors")` - Balance color assignment. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param OUTPUT `sink` - Colored. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Colored
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_topologicalcoloring <- function(INPUT = qgisprocess:::qgis_default_value(), MIN_COLORS = qgisprocess:::qgis_default_value(), MIN_DISTANCE = qgisprocess:::qgis_default_value(), BALANCE = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("qgis:topologicalcoloring")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("qgis:topologicalcoloring", `INPUT` = INPUT, `MIN_COLORS` = MIN_COLORS, `MIN_DISTANCE` = MIN_DISTANCE, `BALANCE` = BALANCE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("qgis:topologicalcoloring", `INPUT` = INPUT, `MIN_COLORS` = MIN_COLORS, `MIN_DISTANCE` = MIN_DISTANCE, `BALANCE` = BALANCE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}