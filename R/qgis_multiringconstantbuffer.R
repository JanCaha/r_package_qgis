##' QGIS Algorithm provided by QGIS (native c++) Multi-ring buffer (constant distance) (native:multiringconstantbuffer)
##'
##' @title QGIS algorithm Multi-ring buffer (constant distance)
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param RINGS `number` - Number of rings. A numeric value.
##' @param DISTANCE `distance` - Distance between rings. A numeric value.
##' @param OUTPUT `sink` - Multi-ring buffer (constant distance). Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Multi-ring buffer (constant distance)
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_multiringconstantbuffer <- function(INPUT = qgisprocess::qgis_default_value(), RINGS = qgisprocess::qgis_default_value(), DISTANCE = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:multiringconstantbuffer")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:multiringconstantbuffer", `INPUT` = INPUT, `RINGS` = RINGS, `DISTANCE` = DISTANCE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:multiringconstantbuffer", `INPUT` = INPUT, `RINGS` = RINGS, `DISTANCE` = DISTANCE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}