##' QGIS Algorithm provided by SAGA Fill gaps in records (saga:fillgapsinrecords)
##'
##' @title QGIS algorithm Fill gaps in records
##'
##' @param TABLE `source` - Table. Path to a vector layer.
##' @param ORDER `field` - Order. The name of an existing field. ; delimited list of existing field names.
##' @param METHOD `enum`  of `("[0] Nearest Neighbour", "[1] Linear", "[2] Spline")` - Interpolation. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param NOGAPS `vectorDestination` - Table without Gaps. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * NOGAPS - outputVector - Table without Gaps
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

saga_fillgapsinrecords <- function(TABLE = qgisprocess:::qgis_default_value(), ORDER = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), NOGAPS = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:fillgapsinrecords")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:fillgapsinrecords", `TABLE` = TABLE, `ORDER` = ORDER, `METHOD` = METHOD, `NOGAPS` = NOGAPS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:fillgapsinrecords", `TABLE` = TABLE, `ORDER` = ORDER, `METHOD` = METHOD, `NOGAPS` = NOGAPS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NOGAPS")
  }
}