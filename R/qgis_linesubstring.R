##' QGIS Algorithm provided by QGIS (native c++) Line substring (native:linesubstring)
##'
##' @title QGIS algorithm Line substring
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param START_DISTANCE `distance` - Start distance. A numeric value.
##' @param END_DISTANCE `distance` - End distance. A numeric value.
##' @param OUTPUT `sink` - Substring. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Substring
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_linesubstring <- function(INPUT = qgisprocess::qgis_default_value(), START_DISTANCE = qgisprocess::qgis_default_value(), END_DISTANCE = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("native:linesubstring")

  output <- qgisprocess::qgis_run_algorithm("native:linesubstring", `INPUT` = INPUT, `START_DISTANCE` = START_DISTANCE, `END_DISTANCE` = END_DISTANCE, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}