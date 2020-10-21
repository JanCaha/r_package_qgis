##' QGIS Algorithm provided by QGIS Points displacement (qgis:pointsdisplacement)
##'
##' @title QGIS algorithm Points displacement
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param PROXIMITY `distance` - Minimum distance to other points. A numeric value.
##' @param DISTANCE `distance` - Displacement distance. A numeric value.
##' @param HORIZONTAL `boolean` - Horizontal distribution for two point case. 1 for true/yes. 0 for false/no.
##' @param OUTPUT `sink` - Displaced. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Displaced
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_pointsdisplacement <- function(INPUT = qgisprocess::qgis_default_value(), PROXIMITY = qgisprocess::qgis_default_value(), DISTANCE = qgisprocess::qgis_default_value(), HORIZONTAL = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("qgis:pointsdisplacement",`INPUT` = INPUT, `PROXIMITY` = PROXIMITY, `DISTANCE` = DISTANCE, `HORIZONTAL` = HORIZONTAL, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}