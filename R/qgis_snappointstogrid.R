##' QGIS Algorithm provided by QGIS (native c++) Snap points to grid (native:snappointstogrid). Modifies the coordinates of geometries in a vector layer, so that all points or vertices are snapped to the closest point of a grid. This algorithm modifies the coordinates of geometries in a vector layer, so that all points or vertices are snapped to the closest point of the grid.  If the snapped geometry cannot be calculated (or is totally collapsed) the feature's geometry will be cleared.  Note that snapping to grid may generate an invalid geometry in some corner cases.  Snapping can be performed on the X, Y, Z or M axis. A grid spacing of 0 for any axis will disable snapping for that axis.
##'
##' @title QGIS algorithm - Snap points to grid
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param HSPACING `distance` - X Grid Spacing. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param VSPACING `distance` - Y Grid Spacing. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ZSPACING `number` - Z Grid Spacing. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param MSPACING `number` - M Grid Spacing. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
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