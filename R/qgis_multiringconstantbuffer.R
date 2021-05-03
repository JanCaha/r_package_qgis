##' QGIS Algorithm provided by QGIS (native c++) Multi-ring buffer (constant distance) (native:multiringconstantbuffer)
##'
##' @title QGIS algorithm Multi-ring buffer (constant distance)
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param RINGS `number` - Number of rings. A numeric value.
##' @param DISTANCE `distance` - Distance between rings. A numeric value.
##' @param OUTPUT `sink` - Multi-ring buffer (constant distance). Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Multi
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_multiringconstantbuffer <- function(INPUT = qgisprocess::qgis_default_value(), RINGS = qgisprocess::qgis_default_value(), DISTANCE = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("native:multiringconstantbuffer")

  output <- qgisprocess::qgis_run_algorithm("native:multiringconstantbuffer", `INPUT` = INPUT, `RINGS` = RINGS, `DISTANCE` = DISTANCE, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}