##' QGIS Algorithm provided by SAGA Transect through polygon shapefile (saga:transectthroughpolygonshapefile)
##'
##' @title QGIS algorithm Transect through polygon shapefile
##'
##' @param TRANSECT `source` - Line Transect(s). Path to a vector layer.
##' @param THEME `source` - Theme. Path to a vector layer.
##' @param THEME_FIELD `field` - Theme Field. The name of an existing field. ; delimited list of existing field names.
##' @param TRANSECT_RESULT `vectorDestination` - Result table. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * TRANSECT_RESULT - outputVector - Result table
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

saga_transectthroughpolygonshapefile <- function(TRANSECT = qgisprocess:::qgis_default_value(), THEME = qgisprocess:::qgis_default_value(), THEME_FIELD = qgisprocess:::qgis_default_value(), TRANSECT_RESULT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:transectthroughpolygonshapefile")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:transectthroughpolygonshapefile", `TRANSECT` = TRANSECT, `THEME` = THEME, `THEME_FIELD` = THEME_FIELD, `TRANSECT_RESULT` = TRANSECT_RESULT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:transectthroughpolygonshapefile", `TRANSECT` = TRANSECT, `THEME` = THEME, `THEME_FIELD` = THEME_FIELD, `TRANSECT_RESULT` = TRANSECT_RESULT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "TRANSECT_RESULT")
  }
}