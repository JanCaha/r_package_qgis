##' QGIS Algorithm provided by QGIS (native c++) Convert to curved geometries (native:converttocurves)
##'
##' @title QGIS algorithm Convert to curved geometries
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param DISTANCE `number` - Maximum distance tolerance. A numeric value.
##' @param ANGLE `number` - Maximum angle tolerance. A numeric value.
##' @param OUTPUT `sink` - Curves. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Curves
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_converttocurves <- function(INPUT = qgisprocess:::qgis_default_value(), DISTANCE = qgisprocess:::qgis_default_value(), ANGLE = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:converttocurves")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:converttocurves", `INPUT` = INPUT, `DISTANCE` = DISTANCE, `ANGLE` = ANGLE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:converttocurves", `INPUT` = INPUT, `DISTANCE` = DISTANCE, `ANGLE` = ANGLE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}