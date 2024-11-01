##' QGIS Algorithm provided by QGIS (native c++) Intersection (native:intersection). This algorithm extracts the overlapping portions of features in the Input and Overlay layers. Features in the output Intersection layer are assigned the attributes of the overlapping features from both the Input and Overlay layers.  ---------------- Notes ----------------   - This algorithm drops existing primary keys or FID values and regenerates them in output layers.
##'
##' @title QGIS algorithm - Intersection
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param OVERLAY `source` - Overlay layer. Path to a vector layer.
##' @param INPUT_FIELDS `field` - Input fields to keep (leave empty to keep all fields). The name of an existing field. ; delimited list of existing field names.
##' @param OVERLAY_FIELDS `field` - Overlay fields to keep (leave empty to keep all fields). The name of an existing field. ; delimited list of existing field names.
##' @param OVERLAY_FIELDS_PREFIX `string` - Overlay fields prefix. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `sink` - Intersection. Path for new vector layer.
##' @param GRID_SIZE `number` - Grid size. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Intersection
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_intersection <- function(INPUT = qgisprocess:::qgis_default_value(), OVERLAY = qgisprocess:::qgis_default_value(), INPUT_FIELDS = qgisprocess:::qgis_default_value(), OVERLAY_FIELDS = qgisprocess:::qgis_default_value(), OVERLAY_FIELDS_PREFIX = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(), GRID_SIZE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:intersection")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:intersection", `INPUT` = INPUT, `OVERLAY` = OVERLAY, `INPUT_FIELDS` = INPUT_FIELDS, `OVERLAY_FIELDS` = OVERLAY_FIELDS, `OVERLAY_FIELDS_PREFIX` = OVERLAY_FIELDS_PREFIX, `OUTPUT` = OUTPUT, `GRID_SIZE` = GRID_SIZE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:intersection", `INPUT` = INPUT, `OVERLAY` = OVERLAY, `INPUT_FIELDS` = INPUT_FIELDS, `OVERLAY_FIELDS` = OVERLAY_FIELDS, `OVERLAY_FIELDS_PREFIX` = OVERLAY_FIELDS_PREFIX, `OUTPUT` = OUTPUT, `GRID_SIZE` = GRID_SIZE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}