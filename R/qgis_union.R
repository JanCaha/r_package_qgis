##' QGIS Algorithm provided by QGIS (native c++) Union (native:union). This algorithm checks overlaps between features within the Input layer and creates separate features for overlapping and non-overlapping parts. The area of overlap will create as many identical overlapping features as there are features that participate in that overlap.  An Overlay layer can also be used, in which case features from each layer are split at their overlap with features from the other one, creating a layer containing all the portions from both Input and Overlay layers. The attribute table of the Union layer is filled with attribute values from the respective original layer for non-overlapping features, and attribute values from both layers for overlapping features.  ---------------- Notes ----------------   - This algorithm drops existing primary keys or FID values and regenerates them in output layers.
##'
##' @title QGIS algorithm - Union
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param OVERLAY `source` - Overlay layer. Path to a vector layer.
##' @param OVERLAY_FIELDS_PREFIX `string` - Overlay fields prefix. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `sink` - Union. Path for new vector layer.
##' @param GRID_SIZE `number` - Grid size. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Union
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_union <- function(INPUT = qgisprocess:::qgis_default_value(), OVERLAY = qgisprocess:::qgis_default_value(), OVERLAY_FIELDS_PREFIX = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(), GRID_SIZE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:union")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:union", `INPUT` = INPUT, `OVERLAY` = OVERLAY, `OVERLAY_FIELDS_PREFIX` = OVERLAY_FIELDS_PREFIX, `OUTPUT` = OUTPUT, `GRID_SIZE` = GRID_SIZE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:union", `INPUT` = INPUT, `OVERLAY` = OVERLAY, `OVERLAY_FIELDS_PREFIX` = OVERLAY_FIELDS_PREFIX, `OUTPUT` = OUTPUT, `GRID_SIZE` = GRID_SIZE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}