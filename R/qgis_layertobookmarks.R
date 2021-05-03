##' QGIS Algorithm provided by QGIS (native c++) Convert layer to spatial bookmarks (native:layertobookmarks)
##'
##' @title QGIS algorithm Convert layer to spatial bookmarks
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param DESTINATION `enum`  of `("Project bookmarks", "User bookmarks")` - Bookmark destination. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param NAME_EXPRESSION `expression` - Name field. A valid QGIS expression string, e.g "road_name" = 'MAIN RD'.
##' @param GROUP_EXPRESSION `expression` - Group field. A valid QGIS expression string, e.g "road_name" = 'MAIN RD'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * COUNT - outputNumber - Count of bookmarks added
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_layertobookmarks <- function(INPUT = qgisprocess::qgis_default_value(), DESTINATION = qgisprocess::qgis_default_value(), NAME_EXPRESSION = qgisprocess::qgis_default_value(), GROUP_EXPRESSION = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("native:layertobookmarks")
  output <- qgisprocess::qgis_run_algorithm("native:layertobookmarks",`INPUT` = INPUT, `DESTINATION` = DESTINATION, `NAME_EXPRESSION` = NAME_EXPRESSION, `GROUP_EXPRESSION` = GROUP_EXPRESSION,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "COUNT")
  }
}