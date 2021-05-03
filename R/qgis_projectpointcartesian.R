##' QGIS Algorithm provided by QGIS (native c++) Project points (Cartesian) (native:projectpointcartesian)
##'
##' @title QGIS algorithm Project points (Cartesian)
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param BEARING `number` - Bearing (degrees from North). A numeric value.
##' @param DISTANCE `distance` - Distance. A numeric value.
##' @param OUTPUT `sink` - Projected. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Projected
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_projectpointcartesian <- function(INPUT = qgisprocess::qgis_default_value(), BEARING = qgisprocess::qgis_default_value(), DISTANCE = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("native:projectpointcartesian")

  output <- qgisprocess::qgis_run_algorithm("native:projectpointcartesian", `INPUT` = INPUT, `BEARING` = BEARING, `DISTANCE` = DISTANCE, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}