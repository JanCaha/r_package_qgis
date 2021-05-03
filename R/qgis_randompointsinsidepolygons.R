##' QGIS Algorithm provided by QGIS Random points inside polygons (qgis:randompointsinsidepolygons)
##'
##' @title QGIS algorithm Random points inside polygons
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param STRATEGY `enum`  of `("Points count", "Points density")` - Sampling strategy. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param VALUE `number` - Point count or density. A numeric value.
##' @param MIN_DISTANCE `distance` - Minimum distance between points. A numeric value.
##' @param OUTPUT `sink` - Random points. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Random points
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_randompointsinsidepolygons <- function(INPUT = qgisprocess::qgis_default_value(), STRATEGY = qgisprocess::qgis_default_value(), VALUE = qgisprocess::qgis_default_value(), MIN_DISTANCE = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("qgis:randompointsinsidepolygons")

  output <- qgisprocess::qgis_run_algorithm("qgis:randompointsinsidepolygons", `INPUT` = INPUT, `STRATEGY` = STRATEGY, `VALUE` = VALUE, `MIN_DISTANCE` = MIN_DISTANCE, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}