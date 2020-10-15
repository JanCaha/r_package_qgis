##' QGIS Algorithm provided by QGIS (native c++) Create categorized renderer from styles (native:categorizeusingstyle)
##'
##' @title QGIS algorithm Create categorized renderer from styles
##'
##' @param INPUT `vector` - Input layer. Path to a vector layer.
##' @param FIELD `expression` - Categorize using expression. A valid QGIS expression string, e.g "road_name" = 'MAIN RD'.
##' @param STYLE `file` - Style database (leave blank to use saved symbols). Path to a file.
##' @param CASE_SENSITIVE `boolean` - Use case-sensitive match to symbol names. 1 for true/yes. 0 for false/no.
##' @param TOLERANT `boolean` - Ignore non-alphanumeric characters while matching. 1 for true/yes. 0 for false/no.
##' @param NON_MATCHING_CATEGORIES `sink` - Non-matching categories. Path for new vector layer.
##' @param NON_MATCHING_SYMBOLS `sink` - Non-matching symbol names. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Categorized layer
##' * NON_MATCHING_CATEGORIES - outputVector - Non
##' * NON_MATCHING_SYMBOLS - outputVector - Non
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_categorizeusingstyle <- function(INPUT = qgisprocess::qgis_default_value(), FIELD = qgisprocess::qgis_default_value(), STYLE = qgisprocess::qgis_default_value(), CASE_SENSITIVE = qgisprocess::qgis_default_value(), TOLERANT = qgisprocess::qgis_default_value(), NON_MATCHING_CATEGORIES = qgisprocess::qgis_default_value(), NON_MATCHING_SYMBOLS = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("native:categorizeusingstyle",`INPUT` = INPUT, `FIELD` = FIELD, `STYLE` = STYLE, `CASE_SENSITIVE` = CASE_SENSITIVE, `TOLERANT` = TOLERANT, `NON_MATCHING_CATEGORIES` = NON_MATCHING_CATEGORIES, `NON_MATCHING_SYMBOLS` = NON_MATCHING_SYMBOLS,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
}
}