##' QGIS Algorithm provided by QGIS PostgreSQL execute and load SQL (qgis:postgisexecuteandloadsql)
##'
##' @title QGIS algorithm PostgreSQL execute and load SQL
##'
##' @param DATABASE `providerconnection` - Database (connection name). Name of registered database connection.
##' @param SQL `string` - SQL query. String value.
##' @param ID_FIELD `string` - Unique ID field name. String value.
##' @param GEOMETRY_FIELD `string` - Geometry field name. String value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Output layer
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_postgisexecuteandloadsql <- function(DATABASE = qgisprocess::qgis_default_value(), SQL = qgisprocess::qgis_default_value(), ID_FIELD = qgisprocess::qgis_default_value(), GEOMETRY_FIELD = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("qgis:postgisexecuteandloadsql",`DATABASE` = DATABASE, `SQL` = SQL, `ID_FIELD` = ID_FIELD, `GEOMETRY_FIELD` = GEOMETRY_FIELD,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
}
}