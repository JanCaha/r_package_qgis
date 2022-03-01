##' QGIS Algorithm provided by QGIS (native c++) Smooth (native:smoothgeometry)
##'
##' @title QGIS algorithm Smooth
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param ITERATIONS `number` - Iterations. A numeric value.
##' @param OFFSET `number` - Offset. A numeric value.
##' @param MAX_ANGLE `number` - Maximum node angle to smooth. A numeric value.
##' @param OUTPUT `sink` - Smoothed. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Smoothed
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_smoothgeometry <- function(INPUT = qgisprocess::qgis_default_value(), ITERATIONS = qgisprocess::qgis_default_value(), OFFSET = qgisprocess::qgis_default_value(), MAX_ANGLE = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:smoothgeometry")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:smoothgeometry", `INPUT` = INPUT, `ITERATIONS` = ITERATIONS, `OFFSET` = OFFSET, `MAX_ANGLE` = MAX_ANGLE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:smoothgeometry", `INPUT` = INPUT, `ITERATIONS` = ITERATIONS, `OFFSET` = OFFSET, `MAX_ANGLE` = MAX_ANGLE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}