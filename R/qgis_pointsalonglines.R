##' QGIS Algorithm provided by QGIS (native c++) Points along geometry (native:pointsalonglines)
##'
##' @title QGIS algorithm Points along geometry
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param DISTANCE `distance` - Distance. A numeric value.
##' @param START_OFFSET `distance` - Start offset. A numeric value.
##' @param END_OFFSET `distance` - End offset. A numeric value.
##' @param OUTPUT `sink` - Interpolated points. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Interpolated points
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_pointsalonglines <- function(INPUT = qgisprocess::qgis_default_value(), DISTANCE = qgisprocess::qgis_default_value(), START_OFFSET = qgisprocess::qgis_default_value(), END_OFFSET = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("native:pointsalonglines")

  output <- qgisprocess::qgis_run_algorithm("native:pointsalonglines", `INPUT` = INPUT, `DISTANCE` = DISTANCE, `START_OFFSET` = START_OFFSET, `END_OFFSET` = END_OFFSET, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}