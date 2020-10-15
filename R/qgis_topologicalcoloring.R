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
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Colored
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_topologicalcoloring <- function(INPUT = qgisprocess::qgis_default_value(), MIN_COLORS = qgisprocess::qgis_default_value(), MIN_DISTANCE = qgisprocess::qgis_default_value(), BALANCE = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("qgis:topologicalcoloring",`INPUT` = INPUT, `MIN_COLORS` = MIN_COLORS, `MIN_DISTANCE` = MIN_DISTANCE, `BALANCE` = BALANCE, `OUTPUT` = OUTPUT,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
}
}