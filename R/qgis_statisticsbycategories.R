##' QGIS Algorithm provided by QGIS Statistics by categories (qgis:statisticsbycategories). This algorithm calculates statistics of fields depending on a parent class.
##'
##' @title QGIS algorithm - Statistics by categories
##'
##' @param INPUT `source` - Input vector layer. Path to a vector layer.
##' @param VALUES_FIELD_NAME `field` - Field to calculate statistics on (if empty, only count is calculated). The name of an existing field. ; delimited list of existing field names.
##' @param CATEGORIES_FIELD_NAME `field` - Field(s) with categories. The name of an existing field. ; delimited list of existing field names.
##' @param OUTPUT `sink` - Statistics by category. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Statistics by category
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_statisticsbycategories <- function(INPUT = qgisprocess:::qgis_default_value(), VALUES_FIELD_NAME = qgisprocess:::qgis_default_value(), CATEGORIES_FIELD_NAME = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("qgis:statisticsbycategories")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("qgis:statisticsbycategories", `INPUT` = INPUT, `VALUES_FIELD_NAME` = VALUES_FIELD_NAME, `CATEGORIES_FIELD_NAME` = CATEGORIES_FIELD_NAME, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("qgis:statisticsbycategories", `INPUT` = INPUT, `VALUES_FIELD_NAME` = VALUES_FIELD_NAME, `CATEGORIES_FIELD_NAME` = CATEGORIES_FIELD_NAME, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}