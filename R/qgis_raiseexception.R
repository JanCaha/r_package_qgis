##' QGIS Algorithm provided by QGIS (native c++) Raise exception (native:raiseexception). Raises an exception and cancels a model's execution. This algorithm raises an exception and cancels a model's execution.  The exception message can be customized, and optionally an expression based condition can be specified. If an expression condition is used, then the exception will only be raised if the expression result is true. A false result indicates that no exception will be raised, and the model execution can continue uninterrupted.
##'
##' @title QGIS algorithm - Raise exception
##'
##' @param MESSAGE `string` - Error message. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param CONDITION `expression` - Condition. A valid QGIS expression string, e.g "road_name" = 'MAIN RD'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' No output description provided.
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_raiseexception <- function(MESSAGE = qgisprocess:::qgis_default_value(), CONDITION = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:raiseexception")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:raiseexception", `MESSAGE` = MESSAGE, `CONDITION` = CONDITION,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:raiseexception", `MESSAGE` = MESSAGE, `CONDITION` = CONDITION,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NA")
  }
}