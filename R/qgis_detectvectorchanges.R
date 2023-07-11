##' QGIS Algorithm provided by QGIS (native c++) Detect dataset changes (native:detectvectorchanges). Calculates features which are unchanged, added or deleted between two dataset versions. This algorithm compares two vector layers, and determines which features are unchanged, added or deleted between the two. It is designed for comparing two different versions of the same dataset.  When comparing features, the original and revised feature geometries will be compared against each other. Depending on the Geometry Comparison Behavior setting, the comparison will either be made using an exact comparison (where geometries must be an exact match for each other, including the order and count of vertices) or a topological comparison only (where geometries are considered equal if all of their component edges overlap. E.g. lines with the same vertex locations but opposite direction will be considered equal by this method). If the topological comparison is selected then any z or m values present in the geometries will not be compared.  By default, the algorithm compares all attributes from the original and revised features. If the Attributes to Consider for Match parameter is changed, then only the selected attributes will be compared (e.g. allowing users to ignore a timestamp or ID field which is expected to change between the revisions).  If any features in the original or revised layers do not have an associated geometry, then care must be taken to ensure that these features have a unique set of attributes selected for comparison. If this condition is not met, warnings will be raised and the resultant outputs may be misleading.  The algorithm outputs three layers, one containing all features which are considered to be unchanged between the revisions, one containing features deleted from the original layer which are not present in the revised layer, and one containing features added to the revised layer which are not present in the original layer.
##'
##' @title QGIS algorithm - Detect dataset changes
##'
##' @param ORIGINAL `source` - Original layer. Path to a vector layer.
##' @param REVISED `source` - Revised layer. Path to a vector layer.
##' @param COMPARE_ATTRIBUTES `field` - Attributes to consider for match (or none to compare geometry only). The name of an existing field. ; delimited list of existing field names.
##' @param MATCH_TYPE `enum`  of `("Exact Match", "Tolerant Match (Topological Equality)")` - Geometry comparison behavior. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param UNCHANGED `sink` - Unchanged features. Path for new vector layer.
##' @param ADDED `sink` - Added features. Path for new vector layer.
##' @param DELETED `sink` - Deleted features. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * ADDED - outputVector - Added features
##' * ADDED_COUNT - outputNumber - Count of features added in revised layer
##' * DELETED - outputVector - Deleted features
##' * DELETED_COUNT - outputNumber - Count of features deleted from original layer
##' * UNCHANGED - outputVector - Unchanged features
##' * UNCHANGED_COUNT - outputNumber - Count of unchanged features
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_detectvectorchanges <- function(ORIGINAL = qgisprocess:::qgis_default_value(), REVISED = qgisprocess:::qgis_default_value(), COMPARE_ATTRIBUTES = qgisprocess:::qgis_default_value(), MATCH_TYPE = qgisprocess:::qgis_default_value(), UNCHANGED = qgisprocess:::qgis_default_value(), ADDED = qgisprocess:::qgis_default_value(), DELETED = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:detectvectorchanges")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:detectvectorchanges", `ORIGINAL` = ORIGINAL, `REVISED` = REVISED, `COMPARE_ATTRIBUTES` = COMPARE_ATTRIBUTES, `MATCH_TYPE` = MATCH_TYPE, `UNCHANGED` = UNCHANGED, `ADDED` = ADDED, `DELETED` = DELETED,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:detectvectorchanges", `ORIGINAL` = ORIGINAL, `REVISED` = REVISED, `COMPARE_ATTRIBUTES` = COMPARE_ATTRIBUTES, `MATCH_TYPE` = MATCH_TYPE, `UNCHANGED` = UNCHANGED, `ADDED` = ADDED, `DELETED` = DELETED,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "ADDED")
  }
}