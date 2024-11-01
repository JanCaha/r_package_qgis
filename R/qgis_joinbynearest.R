##' QGIS Algorithm provided by QGIS (native c++) Join attributes by nearest (native:joinbynearest). Joins a layer to another layer, using the closest features (nearest neighbors). This algorithm takes an input vector layer and creates a new vector layer that is an extended version of the input one, with additional attributes in its attribute table.  The additional attributes and their values are taken from a second vector layer, where features are joined by finding the closest features from each layer. By default only the single nearest feature is joined,but optionally the join can use the n-nearest neighboring features instead. If multiple features are found with identical distances these will all be returned (even if the total number of features exceeds the specified maximum feature count).  If a maximum distance is specified, then only features which are closer than this distance will be matched.  The output features will contain the selected attributes from the nearest feature, along with new attributes for the distance to the near feature, the index of the feature, and the coordinates of the closest point on the input feature (feature_x, feature_y) to the matched nearest feature, and the coordinates of the closet point on the matched feature (nearest_x, nearest_y).  This algorithm uses purely Cartesian calculations for distance, and does not consider geodetic or ellipsoid properties when determining feature proximity.  ---------------- Notes ----------------   - This algorithm drops existing primary keys or FID values and regenerates them in output layers.
##'
##' @title QGIS algorithm - Join attributes by nearest
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param INPUT_2 `source` - Input layer 2. Path to a vector layer.
##' @param FIELDS_TO_COPY `field` - Layer 2 fields to copy (leave empty to copy all fields). The name of an existing field. ; delimited list of existing field names.
##' @param DISCARD_NONMATCHING `boolean` - Discard records which could not be joined. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param PREFIX `string` - Joined field prefix. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param NEIGHBORS `number` - Maximum nearest neighbors. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param MAX_DISTANCE `distance` - Maximum distance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
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