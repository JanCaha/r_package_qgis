##' QGIS Algorithm provided by SAGA Split lines at points (saga:splitlinesatpoints)
##'
##' @title QGIS algorithm Split lines at points
##'
##' @param LINES `source` - Lines. Path to a vector layer.
##' @param SPLIT `source` - Split Features. Path to a vector layer.
##' @param INTERSECT `vectorDestination` - Intersection. Path for new vector layer.
##' @param OUTPUT `enum`  of `("[0] polylines", "[1] separate lines")` - Output. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param EPSILON `number` - Epsilon. A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * INTERSECT - outputVector - Intersection
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_splitlinesatpoints <- function(LINES = qgisprocess::qgis_default_value(), SPLIT = qgisprocess::qgis_default_value(), INTERSECT = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(), EPSILON = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:splitlinesatpoints")

  output <- qgisprocess::qgis_run_algorithm("saga:splitlinesatpoints", `LINES` = LINES, `SPLIT` = SPLIT, `INTERSECT` = INTERSECT, `OUTPUT` = OUTPUT, `EPSILON` = EPSILON,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "INTERSECT")
  }
}