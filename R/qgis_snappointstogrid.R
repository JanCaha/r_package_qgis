##' QGIS Algorithm provided by QGIS (native c++) Snap points to grid (native:snappointstogrid)
##'
##' @title QGIS algorithm Snap points to grid
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param HSPACING `distance` - X Grid Spacing. A numeric value.
##' @param VSPACING `distance` - Y Grid Spacing. A numeric value.
##' @param ZSPACING `number` - Z Grid Spacing. A numeric value.
##' @param MSPACING `number` - M Grid Spacing. A numeric value.
##' @param OUTPUT `sink` - Snapped. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Snapped
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_snappointstogrid <- function(INPUT = qgisprocess:::qgis_default_value(), HSPACING = qgisprocess:::qgis_default_value(), VSPACING = qgisprocess:::qgis_default_value(), ZSPACING = qgisprocess:::qgis_default_value(), MSPACING = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:snappointstogrid")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:snappointstogrid", `INPUT` = INPUT, `HSPACING` = HSPACING, `VSPACING` = VSPACING, `ZSPACING` = ZSPACING, `MSPACING` = MSPACING, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:snappointstogrid", `INPUT` = INPUT, `HSPACING` = HSPACING, `VSPACING` = VSPACING, `ZSPACING` = ZSPACING, `MSPACING` = MSPACING, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}