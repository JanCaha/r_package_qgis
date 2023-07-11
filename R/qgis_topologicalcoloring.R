##' QGIS Algorithm provided by QGIS Topological coloring (qgis:topologicalcoloring). This algorithm assigns a color index to polygon features in such a way that no adjacent polygons share the same color index, whilst minimizing the number of colors required. An optional minimum distance between features assigned the same color can be set to prevent nearby (but non-touching) features from being assigned equal colors. The algorithm allows choice of method to use when assigning colors. The default method attempts to assign colors so that the count of features assigned to each individual color index is balanced. The 'by assigned area' mode instead assigns colors so that the total area of features assigned to each color is balanced. This mode can be useful to help avoid large features resulting in one of the colors appearing more dominant on a colored map. The 'by distance between colors' mode will assign colors in order to maximize the distance between features of the same color. This mode helps to create a more uniform distribution of colors across a map. A minimum number of colors can be specified if desired. The color index is saved to a new attribute named color_id.
##'
##' @title QGIS algorithm - Topological coloring
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param MIN_COLORS `number` - Minimum number of colors. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param MIN_DISTANCE `distance` - Minimum distance between features. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
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