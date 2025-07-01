##' QGIS Algorithm provided by QGIS (native c++) PostgreSQL execute SQL (native:postgisexecutesql). Executes a SQL command on a PostgreSQL database. This algorithm executes a SQL command on a PostgreSQL database.
##'
##' @title QGIS algorithm - PostgreSQL execute SQL
##'
##' @param DATABASE `providerconnection` - Database (connection name). Name of registered database connection.
##' @param SQL `string` - SQL query. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
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

qgis_postgisexecutesql <- function(DATABASE = qgisprocess:::qgis_default_value(), SQL = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:postgisexecutesql")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:postgisexecutesql", `DATABASE` = DATABASE, `SQL` = SQL,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:postgisexecutesql", `DATABASE` = DATABASE, `SQL` = SQL,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NA")
  }
}