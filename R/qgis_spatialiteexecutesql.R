##' QGIS Algorithm provided by QGIS (native c++) SpatiaLite execute SQL (native:spatialiteexecutesql). Executes a SQL command on a SpatiaLite database determined by an input layer or file. This algorithm executes a SQL command on a SpatiaLite database. The database is determined by an input layer or file.
##'
##' @title QGIS algorithm - SpatiaLite execute SQL
##'
##' @param DATABASE `vector` - Database layer (or file). Path to a vector layer.
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

qgis_spatialiteexecutesql <- function(DATABASE = qgisprocess:::qgis_default_value(), SQL = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:spatialiteexecutesql")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:spatialiteexecutesql", `DATABASE` = DATABASE, `SQL` = SQL,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:spatialiteexecutesql", `DATABASE` = DATABASE, `SQL` = SQL,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NA")
  }
}