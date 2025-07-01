##' QGIS Algorithm provided by QGIS (native c++) Small gaps (native:checkgeometrygap). Detects gaps between polygons smaller than a given area. This algorithm checks the gaps between polygons. Gaps with an area smaller than the gap threshold are errors.  If an allowed gaps layer is given, the gaps contained in polygons from this layer will be ignored. An optional buffer can be applied to the allowed gaps.  The neighbors output layer is needed for the fix geometry (gaps) algorithm. It is a 1-N relational table for correspondance between a gap and the unique id of its neighbor features.
##'
##' @title QGIS algorithm - Small gaps
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param UNIQUE_ID `field` - Unique feature identifier. The name of an existing field. ; delimited list of existing field names.
##' @param GAP_THRESHOLD `number` - Gap threshold. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ALLOWED_GAPS_LAYER `vector` - Allowed gaps layer. Path to a vector layer.
##' @param ALLOWED_GAPS_BUFFER `distance` - Allowed gaps buffer. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param NEIGHBORS `sink` - Neighbors layer. Path for new vector layer.
##' @param ERRORS `sink` - Gap errors. Path for new vector layer.
##' @param OUTPUT `sink` - Gap features. Path for new vector layer.
##' @param TOLERANCE `number` - Tolerance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * ERRORS - outputVector - Gap errors
##' * NEIGHBORS - outputVector - Neighbors layer
##' * OUTPUT - outputVector - Gap features
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_checkgeometrygap <- function(INPUT = qgisprocess:::qgis_default_value(), UNIQUE_ID = qgisprocess:::qgis_default_value(), GAP_THRESHOLD = qgisprocess:::qgis_default_value(), ALLOWED_GAPS_LAYER = qgisprocess:::qgis_default_value(), ALLOWED_GAPS_BUFFER = qgisprocess:::qgis_default_value(), NEIGHBORS = qgisprocess:::qgis_default_value(), ERRORS = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(), TOLERANCE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:checkgeometrygap")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:checkgeometrygap", `INPUT` = INPUT, `UNIQUE_ID` = UNIQUE_ID, `GAP_THRESHOLD` = GAP_THRESHOLD, `ALLOWED_GAPS_LAYER` = ALLOWED_GAPS_LAYER, `ALLOWED_GAPS_BUFFER` = ALLOWED_GAPS_BUFFER, `NEIGHBORS` = NEIGHBORS, `ERRORS` = ERRORS, `OUTPUT` = OUTPUT, `TOLERANCE` = TOLERANCE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:checkgeometrygap", `INPUT` = INPUT, `UNIQUE_ID` = UNIQUE_ID, `GAP_THRESHOLD` = GAP_THRESHOLD, `ALLOWED_GAPS_LAYER` = ALLOWED_GAPS_LAYER, `ALLOWED_GAPS_BUFFER` = ALLOWED_GAPS_BUFFER, `NEIGHBORS` = NEIGHBORS, `ERRORS` = ERRORS, `OUTPUT` = OUTPUT, `TOLERANCE` = TOLERANCE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "ERRORS")
  }
}