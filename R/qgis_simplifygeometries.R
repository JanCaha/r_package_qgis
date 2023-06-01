##' QGIS Algorithm provided by QGIS (native c++) Simplify (native:simplifygeometries)
##'
##' @title QGIS algorithm Simplify
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param METHOD `enum`  of `("Distance (Douglas-Peucker)", "Snap to grid", "Area (Visvalingam)")` - Simplification method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param TOLERANCE `distance` - Tolerance. A numeric value.
##' @param OUTPUT `sink` - Simplified. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Simplified
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_simplifygeometries <- function(INPUT = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), TOLERANCE = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:simplifygeometries")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:simplifygeometries", `INPUT` = INPUT, `METHOD` = METHOD, `TOLERANCE` = TOLERANCE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:simplifygeometries", `INPUT` = INPUT, `METHOD` = METHOD, `TOLERANCE` = TOLERANCE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}