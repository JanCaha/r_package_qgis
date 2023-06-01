##' QGIS Algorithm provided by QGIS (native c++) Join attributes by nearest (native:joinbynearest)
##'
##' @title QGIS algorithm Join attributes by nearest
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param INPUT_2 `source` - Input layer 2. Path to a vector layer.
##' @param FIELDS_TO_COPY `field` - Layer 2 fields to copy (leave empty to copy all fields). The name of an existing field. ; delimited list of existing field names.
##' @param DISCARD_NONMATCHING `boolean` - Discard records which could not be joined. 1 for true/yes. 0 for false/no.
##' @param PREFIX `string` - Joined field prefix. String value.
##' @param NEIGHBORS `number` - Maximum nearest neighbors. A numeric value.
##' @param MAX_DISTANCE `distance` - Maximum distance. A numeric value.
##' @param OUTPUT `sink` - Joined layer. Path for new vector layer.
##' @param NON_MATCHING `sink` - Unjoinable features from first layer. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * JOINED_COUNT - outputNumber - Number of joined features from input table
##' * NON_MATCHING - outputVector - Unjoinable features from first layer
##' * OUTPUT - outputVector - Joined layer
##' * UNJOINABLE_COUNT - outputNumber - Number of unjoinable features from input table
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_joinbynearest <- function(INPUT = qgisprocess:::qgis_default_value(), INPUT_2 = qgisprocess:::qgis_default_value(), FIELDS_TO_COPY = qgisprocess:::qgis_default_value(), DISCARD_NONMATCHING = qgisprocess:::qgis_default_value(), PREFIX = qgisprocess:::qgis_default_value(), NEIGHBORS = qgisprocess:::qgis_default_value(), MAX_DISTANCE = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(), NON_MATCHING = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:joinbynearest")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:joinbynearest", `INPUT` = INPUT, `INPUT_2` = INPUT_2, `FIELDS_TO_COPY` = FIELDS_TO_COPY, `DISCARD_NONMATCHING` = DISCARD_NONMATCHING, `PREFIX` = PREFIX, `NEIGHBORS` = NEIGHBORS, `MAX_DISTANCE` = MAX_DISTANCE, `OUTPUT` = OUTPUT, `NON_MATCHING` = NON_MATCHING,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:joinbynearest", `INPUT` = INPUT, `INPUT_2` = INPUT_2, `FIELDS_TO_COPY` = FIELDS_TO_COPY, `DISCARD_NONMATCHING` = DISCARD_NONMATCHING, `PREFIX` = PREFIX, `NEIGHBORS` = NEIGHBORS, `MAX_DISTANCE` = MAX_DISTANCE, `OUTPUT` = OUTPUT, `NON_MATCHING` = NON_MATCHING,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "JOINED_COUNT")
  }
}