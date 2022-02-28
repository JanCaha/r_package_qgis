##' QGIS Algorithm provided by QGIS (native c++) Shortest line between features (native:shortestline)
##'
##' @title QGIS algorithm Shortest line between features
##'
##' @param SOURCE `source` - Source layer. Path to a vector layer.
##' @param DESTINATION `source` - Destination layer. Path to a vector layer.
##' @param METHOD `enum`  of `("Distance to Nearest Point on feature", "Distance to Feature Centroid")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param NEIGHBORS `number` - Maximum number of neighbors. A numeric value.
##' @param DISTANCE `distance` - Maximum distance. A numeric value.
##' @param OUTPUT `sink` - Shortest lines. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Shortest lines
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_shortestline <- function(SOURCE = qgisprocess::qgis_default_value(), DESTINATION = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(), NEIGHBORS = qgisprocess::qgis_default_value(), DISTANCE = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("native:shortestline")

  output <- qgisprocess::qgis_run_algorithm("native:shortestline", `SOURCE` = SOURCE, `DESTINATION` = DESTINATION, `METHOD` = METHOD, `NEIGHBORS` = NEIGHBORS, `DISTANCE` = DISTANCE, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}