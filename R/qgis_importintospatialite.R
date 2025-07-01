##' QGIS Algorithm provided by QGIS Export to SpatiaLite (qgis:importintospatialite). Exports a vector layer to a SpatiaLite database. This algorithm imports a vector layer into a SpatiaLite database, creating a new table.
##'
##' @title QGIS algorithm - Export to SpatiaLite
##'
##' @param INPUT `source` - Layer to import. Path to a vector layer.
##' @param DATABASE `vector` - File database. Path to a vector layer.
##' @param TABLENAME `string` - Table to import to (leave blank to use layer name). String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param PRIMARY_KEY `field` - Primary key field. The name of an existing field. ; delimited list of existing field names.
##' @param GEOMETRY_COLUMN `string` - Geometry column. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ENCODING `string` - Encoding. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OVERWRITE `boolean` - Overwrite. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param CREATEINDEX `boolean` - Create spatial index. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param LOWERCASE_NAMES `boolean` - Convert field names to lowercase. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DROP_STRING_LENGTH `boolean` - Drop length constraints on character fields. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param FORCE_SINGLEPART `boolean` - Create single-part geometries instead of multi-part. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
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

qgis_importintospatialite <- function(INPUT = qgisprocess:::qgis_default_value(), DATABASE = qgisprocess:::qgis_default_value(), TABLENAME = qgisprocess:::qgis_default_value(), PRIMARY_KEY = qgisprocess:::qgis_default_value(), GEOMETRY_COLUMN = qgisprocess:::qgis_default_value(), ENCODING = qgisprocess:::qgis_default_value(), OVERWRITE = qgisprocess:::qgis_default_value(), CREATEINDEX = qgisprocess:::qgis_default_value(), LOWERCASE_NAMES = qgisprocess:::qgis_default_value(), DROP_STRING_LENGTH = qgisprocess:::qgis_default_value(), FORCE_SINGLEPART = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("qgis:importintospatialite")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("qgis:importintospatialite", `INPUT` = INPUT, `DATABASE` = DATABASE, `TABLENAME` = TABLENAME, `PRIMARY_KEY` = PRIMARY_KEY, `GEOMETRY_COLUMN` = GEOMETRY_COLUMN, `ENCODING` = ENCODING, `OVERWRITE` = OVERWRITE, `CREATEINDEX` = CREATEINDEX, `LOWERCASE_NAMES` = LOWERCASE_NAMES, `DROP_STRING_LENGTH` = DROP_STRING_LENGTH, `FORCE_SINGLEPART` = FORCE_SINGLEPART,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("qgis:importintospatialite", `INPUT` = INPUT, `DATABASE` = DATABASE, `TABLENAME` = TABLENAME, `PRIMARY_KEY` = PRIMARY_KEY, `GEOMETRY_COLUMN` = GEOMETRY_COLUMN, `ENCODING` = ENCODING, `OVERWRITE` = OVERWRITE, `CREATEINDEX` = CREATEINDEX, `LOWERCASE_NAMES` = LOWERCASE_NAMES, `DROP_STRING_LENGTH` = DROP_STRING_LENGTH, `FORCE_SINGLEPART` = FORCE_SINGLEPART,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NA")
  }
}