##' QGIS Algorithm provided by QGIS (native c++) Detect dataset changes (native:detectvectorchanges)
##'
##' @title QGIS algorithm Detect dataset changes
##'
##' @param ORIGINAL `source` - Original layer. Path to a vector layer.
##' @param REVISED `source` - Revised layer. Path to a vector layer.
##' @param COMPARE_ATTRIBUTES `field` - Attributes to consider for match (or none to compare geometry only). The name of an existing field. ; delimited list of existing field names.
##' @param MATCH_TYPE `enum`  of `("Exact Match", "Tolerant Match (Topological Equality)")` - Geometry comparison behavior. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param UNCHANGED `sink` - Unchanged features. Path for new vector layer.
##' @param ADDED `sink` - Added features. Path for new vector layer.
##' @param DELETED `sink` - Deleted features. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * UNCHANGED - outputVector - Unchanged features
##' * ADDED - outputVector - Added features
##' * DELETED - outputVector - Deleted features
##' * UNCHANGED_COUNT - outputNumber - Count of unchanged features
##' * ADDED_COUNT - outputNumber - Count of features added in revised layer
##' * DELETED_COUNT - outputNumber - Count of features deleted from original layer
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_detectvectorchanges <- function(ORIGINAL = qgisprocess::qgis_default_value(), REVISED = qgisprocess::qgis_default_value(), COMPARE_ATTRIBUTES = qgisprocess::qgis_default_value(), MATCH_TYPE = qgisprocess::qgis_default_value(), UNCHANGED = qgisprocess::qgis_default_value(), ADDED = qgisprocess::qgis_default_value(), DELETED = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("native:detectvectorchanges")
  output <- qgisprocess::qgis_run_algorithm("native:detectvectorchanges",`ORIGINAL` = ORIGINAL, `REVISED` = REVISED, `COMPARE_ATTRIBUTES` = COMPARE_ATTRIBUTES, `MATCH_TYPE` = MATCH_TYPE, `UNCHANGED` = UNCHANGED, `ADDED` = ADDED, `DELETED` = DELETED,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "UNCHANGED")
  }
}