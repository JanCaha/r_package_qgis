##' QGIS Algorithm provided by QGIS (native c++) Set metadata fields (native:setmetadatafields). Sets various metadata fields for a layer. This algorithm sets various metadata fields for a layer.
##'
##' @title QGIS algorithm - Set metadata fields
##'
##' @param INPUT `layer` - Layer. Path to a vector, raster or mesh layer.
##' @param IDENTIFIER `string` - Identifier. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param PARENT_IDENTIFIER `string` - Parent identifier. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TITLE `string` - Title. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TYPE `string` - Type. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param LANGUAGE `string` - Language. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ENCODING `string` - Encoding. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ABSTRACT `string` - Abstract. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param CRS `crs` - Coordinate reference system. CRS as an auth ID (e.g. 'EPSG:3111'). CRS as a PROJ4 string (e.g. 'PROJ4:…'). CRS as a WKT string (e.g. 'WKT:…'). Path to a layer. The CRS of the layer is used..
##' @param FEES `string` - Fees. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param IGNORE_EMPTY `boolean` - Ignore empty fields. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputLayer - Updated
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_setmetadatafields <- function(INPUT = qgisprocess:::qgis_default_value(), IDENTIFIER = qgisprocess:::qgis_default_value(), PARENT_IDENTIFIER = qgisprocess:::qgis_default_value(), TITLE = qgisprocess:::qgis_default_value(), TYPE = qgisprocess:::qgis_default_value(), LANGUAGE = qgisprocess:::qgis_default_value(), ENCODING = qgisprocess:::qgis_default_value(), ABSTRACT = qgisprocess:::qgis_default_value(), CRS = qgisprocess:::qgis_default_value(), FEES = qgisprocess:::qgis_default_value(), IGNORE_EMPTY = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:setmetadatafields")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:setmetadatafields", `INPUT` = INPUT, `IDENTIFIER` = IDENTIFIER, `PARENT_IDENTIFIER` = PARENT_IDENTIFIER, `TITLE` = TITLE, `TYPE` = TYPE, `LANGUAGE` = LANGUAGE, `ENCODING` = ENCODING, `ABSTRACT` = ABSTRACT, `CRS` = CRS, `FEES` = FEES, `IGNORE_EMPTY` = IGNORE_EMPTY,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:setmetadatafields", `INPUT` = INPUT, `IDENTIFIER` = IDENTIFIER, `PARENT_IDENTIFIER` = PARENT_IDENTIFIER, `TITLE` = TITLE, `TYPE` = TYPE, `LANGUAGE` = LANGUAGE, `ENCODING` = ENCODING, `ABSTRACT` = ABSTRACT, `CRS` = CRS, `FEES` = FEES, `IGNORE_EMPTY` = IGNORE_EMPTY,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}