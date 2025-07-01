##' QGIS Algorithm provided by QGIS (native c++) Pole of inaccessibility (native:poleofinaccessibility). Creates a point layer with features representing the most distant internal point from the boundary of the surface for a polygon layer. This algorithm calculates the pole of inaccessibility for a polygon layer, which is the most distant internal point from the boundary of the surface. This algorithm uses the 'polylabel' algorithm (Vladimir Agafonkin, 2016), which is an iterative approach guaranteed to find the true pole of inaccessibility within a specified tolerance (in layer units). More precise tolerances require more iterations and will take longer to calculate.  The distance from the calculated pole to the polygon boundary will be stored as a new attribute in the output layer.
##'
##' @title QGIS algorithm - Pole of inaccessibility
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param TOLERANCE `distance` - Tolerance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `sink` - Point. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Point
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_poleofinaccessibility <- function(INPUT = qgisprocess:::qgis_default_value(), TOLERANCE = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:poleofinaccessibility")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:poleofinaccessibility", `INPUT` = INPUT, `TOLERANCE` = TOLERANCE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:poleofinaccessibility", `INPUT` = INPUT, `TOLERANCE` = TOLERANCE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}