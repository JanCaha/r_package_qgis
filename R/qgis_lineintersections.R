##' QGIS Algorithm provided by QGIS (native c++) Line intersections (native:lineintersections). Creates point features at the intersection of lines from two different layers. This algorithm creates point features where the lines in the Intersect layer intersect the lines in the Input layer.  ---------------- Notes ----------------   - This algorithm drops existing primary keys or FID values and regenerates them in output layers.
##'
##' @title QGIS algorithm - Line intersections
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param INTERSECT `source` - Intersect layer. Path to a vector layer.
##' @param INPUT_FIELDS `field` - Input fields to keep (leave empty to keep all fields). The name of an existing field. ; delimited list of existing field names.
##' @param INTERSECT_FIELDS `field` - Intersect fields to keep (leave empty to keep all fields). The name of an existing field. ; delimited list of existing field names.
##' @param INTERSECT_FIELDS_PREFIX `string` - Intersect fields prefix. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `sink` - Intersections. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Intersections
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_lineintersections <- function(INPUT = qgisprocess:::qgis_default_value(), INTERSECT = qgisprocess:::qgis_default_value(), INPUT_FIELDS = qgisprocess:::qgis_default_value(), INTERSECT_FIELDS = qgisprocess:::qgis_default_value(), INTERSECT_FIELDS_PREFIX = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:lineintersections")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:lineintersections", `INPUT` = INPUT, `INTERSECT` = INTERSECT, `INPUT_FIELDS` = INPUT_FIELDS, `INTERSECT_FIELDS` = INTERSECT_FIELDS, `INTERSECT_FIELDS_PREFIX` = INTERSECT_FIELDS_PREFIX, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:lineintersections", `INPUT` = INPUT, `INTERSECT` = INTERSECT, `INPUT_FIELDS` = INPUT_FIELDS, `INTERSECT_FIELDS` = INTERSECT_FIELDS, `INTERSECT_FIELDS_PREFIX` = INTERSECT_FIELDS_PREFIX, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}