##' QGIS Algorithm provided by SAGA Line dissolve (saga:linedissolve)
##'
##' @title QGIS algorithm Line dissolve
##'
##' @param LINES `source` - Lines. Path to a vector layer.
##' @param FIELD_1 `field` - 1. Attribute. The name of an existing field. ; delimited list of existing field names.
##' @param FIELD_2 `field` - 2. Attribute. The name of an existing field. ; delimited list of existing field names.
##' @param FIELD_3 `field` - 3. Attribute. The name of an existing field. ; delimited list of existing field names.
##' @param ALL `enum`  of `("[0] lines with same attribute value(s)", "[1] all lines")` - Dissolve.... Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DISSOLVED `vectorDestination` - Dissolved Lines. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * DISSOLVED - outputVector - Dissolved Lines
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_linedissolve <- function(LINES = qgisprocess::qgis_default_value(), FIELD_1 = qgisprocess::qgis_default_value(), FIELD_2 = qgisprocess::qgis_default_value(), FIELD_3 = qgisprocess::qgis_default_value(), ALL = qgisprocess::qgis_default_value(), DISSOLVED = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:linedissolve")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:linedissolve", `LINES` = LINES, `FIELD_1` = FIELD_1, `FIELD_2` = FIELD_2, `FIELD_3` = FIELD_3, `ALL` = ALL, `DISSOLVED` = DISSOLVED,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:linedissolve", `LINES` = LINES, `FIELD_1` = FIELD_1, `FIELD_2` = FIELD_2, `FIELD_3` = FIELD_3, `ALL` = ALL, `DISSOLVED` = DISSOLVED,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "DISSOLVED")
  }
}