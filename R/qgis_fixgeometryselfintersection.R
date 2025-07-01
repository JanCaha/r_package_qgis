##' QGIS Algorithm provided by QGIS (native c++) Split self-intersecting geometries (native:fixgeometryselfintersection). Splits features detected with the "Self-intersections" algorithm from the "Check geometry" section. This algorithm splits self intersecting lines or polygons according to the chosen method, based on an error layer from the "Self-intersections" algorithm in the "Check geometry" section.
##'
##' @title QGIS algorithm - Split self-intersecting geometries
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param ERRORS `source` - Error layer. Path to a vector layer.
##' @param METHOD `enum`  of `("Split feature into a multi-object feature", "Split feature into multiple single-object features")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param UNIQUE_ID `field` - Field of original feature unique identifier. The name of an existing field. ; delimited list of existing field names.
##' @param PART_IDX `field` - Field of part index. The name of an existing field. ; delimited list of existing field names.
##' @param RING_IDX `field` - Field of ring index. The name of an existing field. ; delimited list of existing field names.
##' @param VERTEX_IDX `field` - Field of vertex index. The name of an existing field. ; delimited list of existing field names.
##' @param SEGMENT_1 `field` - Field of segment 1. The name of an existing field. ; delimited list of existing field names.
##' @param SEGMENT_2 `field` - Field of segment 2. The name of an existing field. ; delimited list of existing field names.
##' @param OUTPUT `sink` - Self-intersections fixed layer. Path for new vector layer.
##' @param REPORT `sink` - Report layer from fixing self-intersections. Path for new vector layer.
##' @param TOLERANCE `number` - Tolerance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Self-intersections fixed layer
##' * REPORT - outputVector - Report layer from fixing self-intersections
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_fixgeometryselfintersection <- function(INPUT = qgisprocess:::qgis_default_value(), ERRORS = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), UNIQUE_ID = qgisprocess:::qgis_default_value(), PART_IDX = qgisprocess:::qgis_default_value(), RING_IDX = qgisprocess:::qgis_default_value(), VERTEX_IDX = qgisprocess:::qgis_default_value(), SEGMENT_1 = qgisprocess:::qgis_default_value(), SEGMENT_2 = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(), REPORT = qgisprocess:::qgis_default_value(), TOLERANCE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:fixgeometryselfintersection")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:fixgeometryselfintersection", `INPUT` = INPUT, `ERRORS` = ERRORS, `METHOD` = METHOD, `UNIQUE_ID` = UNIQUE_ID, `PART_IDX` = PART_IDX, `RING_IDX` = RING_IDX, `VERTEX_IDX` = VERTEX_IDX, `SEGMENT_1` = SEGMENT_1, `SEGMENT_2` = SEGMENT_2, `OUTPUT` = OUTPUT, `REPORT` = REPORT, `TOLERANCE` = TOLERANCE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:fixgeometryselfintersection", `INPUT` = INPUT, `ERRORS` = ERRORS, `METHOD` = METHOD, `UNIQUE_ID` = UNIQUE_ID, `PART_IDX` = PART_IDX, `RING_IDX` = RING_IDX, `VERTEX_IDX` = VERTEX_IDX, `SEGMENT_1` = SEGMENT_1, `SEGMENT_2` = SEGMENT_2, `OUTPUT` = OUTPUT, `REPORT` = REPORT, `TOLERANCE` = TOLERANCE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}