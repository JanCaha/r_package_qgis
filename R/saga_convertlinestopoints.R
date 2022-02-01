##' QGIS Algorithm provided by SAGA Convert lines to points (saga:convertlinestopoints)
##'
##' @title QGIS algorithm Convert lines to points
##'
##' @param LINES `source` - Lines. Path to a vector layer.
##' @param ADD `boolean` - Insert Additional Points. 1 for true/yes. 0 for false/no.
##' @param DIST `number` - Insert Distance. A numeric value.
##' @param POINTS `vectorDestination` - Points. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * POINTS - outputVector - Points
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_convertlinestopoints <- function(LINES = qgisprocess::qgis_default_value(), ADD = qgisprocess::qgis_default_value(), DIST = qgisprocess::qgis_default_value(), POINTS = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:convertlinestopoints")

  output <- qgisprocess::qgis_run_algorithm("saga:convertlinestopoints", `LINES` = LINES, `ADD` = ADD, `DIST` = DIST, `POINTS` = POINTS,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "POINTS")
  }
}