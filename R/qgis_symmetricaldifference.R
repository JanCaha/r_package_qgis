##' QGIS Algorithm provided by QGIS (native c++) Symmetrical difference (native:symmetricaldifference). This algorithm extracts the portions of features from both the Input and Overlay layers that do not overlap. Overlapping areas between the two layers are removed. The attribute table of the Symmetrical Difference layer contains original attributes from both the Input and Difference layers.  ---------------- Notes ----------------   - This algorithm drops existing primary keys or FID values and regenerates them in output layers.
##'
##' @title QGIS algorithm - Symmetrical difference
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param OVERLAY `source` - Overlay layer. Path to a vector layer.
##' @param OVERLAY_FIELDS_PREFIX `string` - Overlay fields prefix. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `sink` - Symmetrical difference. Path for new vector layer.
##' @param GRID_SIZE `number` - Grid size. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Symmetrical difference
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_symmetricaldifference <- function(INPUT = qgisprocess:::qgis_default_value(), OVERLAY = qgisprocess:::qgis_default_value(), OVERLAY_FIELDS_PREFIX = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(), GRID_SIZE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:symmetricaldifference")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:symmetricaldifference", `INPUT` = INPUT, `OVERLAY` = OVERLAY, `OVERLAY_FIELDS_PREFIX` = OVERLAY_FIELDS_PREFIX, `OUTPUT` = OUTPUT, `GRID_SIZE` = GRID_SIZE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:symmetricaldifference", `INPUT` = INPUT, `OVERLAY` = OVERLAY, `OVERLAY_FIELDS_PREFIX` = OVERLAY_FIELDS_PREFIX, `OUTPUT` = OUTPUT, `GRID_SIZE` = GRID_SIZE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}