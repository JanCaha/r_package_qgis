##' QGIS Algorithm provided by QGIS (native c++) Check validity (native:checkvalidity). Performs a validity check on the geometries of a vector layer and classifies them in three groups (valid, invalid and error). This algorithm performs a validity check on the geometries of a vector layer.  The geometries are classified in three groups (valid, invalid and error), and a vector layer is generated with the features in each of these categories.  By default the algorithm uses the strict OGC definition of polygon validity, where a polygon is marked as invalid if a self-intersecting ring causes an interior hole. If the 'Ignore ring self intersections' option is checked, then this rule will be ignored and a more lenient validity check will be performed.  The GEOS method is faster and performs better on larger geometries, but is limited to only returning the first error encountered in a geometry. The QGIS method will be slower but reports all errors encountered in the geometry, not just the first.
##'
##' @title QGIS algorithm - Check validity
##'
##' @param INPUT_LAYER `source` - Input layer. Path to a vector layer.
##' @param METHOD `enum`  of `("The one selected in digitizing settings", "QGIS", "GEOS")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param IGNORE_RING_SELF_INTERSECTION `boolean` - Ignore ring self intersections. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param VALID_OUTPUT `sink` - Valid output. Path for new vector layer.
##' @param INVALID_OUTPUT `sink` - Invalid output. Path for new vector layer.
##' @param ERROR_OUTPUT `sink` - Error output. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * ERROR_COUNT - outputNumber - Count of errors
##' * ERROR_OUTPUT - outputVector - Error output
##' * INVALID_COUNT - outputNumber - Count of invalid features
##' * INVALID_OUTPUT - outputVector - Invalid output
##' * VALID_COUNT - outputNumber - Count of valid features
##' * VALID_OUTPUT - outputVector - Valid output
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_checkvalidity <- function(INPUT_LAYER = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), IGNORE_RING_SELF_INTERSECTION = qgisprocess:::qgis_default_value(), VALID_OUTPUT = qgisprocess:::qgis_default_value(), INVALID_OUTPUT = qgisprocess:::qgis_default_value(), ERROR_OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:checkvalidity")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:checkvalidity", `INPUT_LAYER` = INPUT_LAYER, `METHOD` = METHOD, `IGNORE_RING_SELF_INTERSECTION` = IGNORE_RING_SELF_INTERSECTION, `VALID_OUTPUT` = VALID_OUTPUT, `INVALID_OUTPUT` = INVALID_OUTPUT, `ERROR_OUTPUT` = ERROR_OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:checkvalidity", `INPUT_LAYER` = INPUT_LAYER, `METHOD` = METHOD, `IGNORE_RING_SELF_INTERSECTION` = IGNORE_RING_SELF_INTERSECTION, `VALID_OUTPUT` = VALID_OUTPUT, `INVALID_OUTPUT` = INVALID_OUTPUT, `ERROR_OUTPUT` = ERROR_OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "ERROR_COUNT")
  }
}