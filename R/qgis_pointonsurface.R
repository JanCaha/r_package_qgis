##' QGIS Algorithm provided by QGIS (native c++) Point on surface (native:pointonsurface). Returns a point guaranteed to lie on the surface of a geometry. This algorithm returns a point guaranteed to lie on the surface of a geometry.  ---------------- Notes ----------------   - This algorithm may drop existing primary keys or FID values and regenerate them in output layers, depending on the input parameters.
##'
##' @title QGIS algorithm - Point on surface
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param ALL_PARTS `boolean` - Create point on surface for each part. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
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

qgis_pointonsurface <- function(INPUT = qgisprocess:::qgis_default_value(), ALL_PARTS = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:pointonsurface")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:pointonsurface", `INPUT` = INPUT, `ALL_PARTS` = ALL_PARTS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:pointonsurface", `INPUT` = INPUT, `ALL_PARTS` = ALL_PARTS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}