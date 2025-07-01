##' QGIS Algorithm provided by QGIS (native c++) Fix small polygons (native:fixgeometryarea). Merges small polygons detected with the "Small polygons" algorithm from the "Check geometry" section. This algorithm merges neighboring polygons according to the chosen method, based on an error layer from the "Small polygons" algorithm in the "Check geometry" section.
##'
##' @title QGIS algorithm - Fix small polygons
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param ERRORS `source` - Error layer. Path to a vector layer.
##' @param METHOD `enum`  of `("Merge with neighboring polygon with longest shared edge", "Merge with neighboring polygon with largest area", "Merge with neighboring polygon with identical attribute value, if any, or leave as is")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param MERGE_ATTRIBUTE `field` - Field to consider when merging polygons with the identical attribute method. The name of an existing field. ; delimited list of existing field names.
##' @param UNIQUE_ID `field` - Field of original feature unique identifier. The name of an existing field. ; delimited list of existing field names.
##' @param PART_IDX `field` - Field of part index. The name of an existing field. ; delimited list of existing field names.
##' @param RING_IDX `field` - Field of ring index. The name of an existing field. ; delimited list of existing field names.
##' @param VERTEX_IDX `field` - Field of vertex index. The name of an existing field. ; delimited list of existing field names.
##' @param OUTPUT `sink` - Small polygons merged layer. Path for new vector layer.
##' @param REPORT `sink` - Report layer from merging small polygons. Path for new vector layer.
##' @param TOLERANCE `number` - Tolerance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Small polygons merged layer
##' * REPORT - outputVector - Report layer from merging small polygons
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_fixgeometryarea <- function(INPUT = qgisprocess:::qgis_default_value(), ERRORS = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), MERGE_ATTRIBUTE = qgisprocess:::qgis_default_value(), UNIQUE_ID = qgisprocess:::qgis_default_value(), PART_IDX = qgisprocess:::qgis_default_value(), RING_IDX = qgisprocess:::qgis_default_value(), VERTEX_IDX = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(), REPORT = qgisprocess:::qgis_default_value(), TOLERANCE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:fixgeometryarea")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:fixgeometryarea", `INPUT` = INPUT, `ERRORS` = ERRORS, `METHOD` = METHOD, `MERGE_ATTRIBUTE` = MERGE_ATTRIBUTE, `UNIQUE_ID` = UNIQUE_ID, `PART_IDX` = PART_IDX, `RING_IDX` = RING_IDX, `VERTEX_IDX` = VERTEX_IDX, `OUTPUT` = OUTPUT, `REPORT` = REPORT, `TOLERANCE` = TOLERANCE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:fixgeometryarea", `INPUT` = INPUT, `ERRORS` = ERRORS, `METHOD` = METHOD, `MERGE_ATTRIBUTE` = MERGE_ATTRIBUTE, `UNIQUE_ID` = UNIQUE_ID, `PART_IDX` = PART_IDX, `RING_IDX` = RING_IDX, `VERTEX_IDX` = VERTEX_IDX, `OUTPUT` = OUTPUT, `REPORT` = REPORT, `TOLERANCE` = TOLERANCE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}