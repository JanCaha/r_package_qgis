##' QGIS Algorithm provided by SAGA Next Gen Export polygons to html image map (sagang:exportpolygonstohtmlimagemap). ---------------- Arguments ----------------  POLYGONS: Polygons 	Argument type:	source 	Acceptable values: 		- Path to a vector layer LINK: Link 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names TITLE: Title 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names FILE: File 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file LINK_PREFIX: Link Prefix 	Default value:	http://www.saga-gis.org/ 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression LINK_SUFFIX: Link Suffix 	Default value:	index.html 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Export polygons to html image map
##'
##' @param POLYGONS `source` - Polygons. Path to a vector layer.
##' @param LINK `field` - Link. The name of an existing field. ; delimited list of existing field names.
##' @param TITLE `field` - Title. The name of an existing field. ; delimited list of existing field names.
##' @param FILE `file` - File. Path to a file.
##' @param LINK_PREFIX `string` - Link Prefix. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param LINK_SUFFIX `string` - Link Suffix. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
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

sagang_exportpolygonstohtmlimagemap <- function(POLYGONS = qgisprocess:::qgis_default_value(), LINK = qgisprocess:::qgis_default_value(), TITLE = qgisprocess:::qgis_default_value(), FILE = qgisprocess:::qgis_default_value(), LINK_PREFIX = qgisprocess:::qgis_default_value(), LINK_SUFFIX = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:exportpolygonstohtmlimagemap")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:exportpolygonstohtmlimagemap", `POLYGONS` = POLYGONS, `LINK` = LINK, `TITLE` = TITLE, `FILE` = FILE, `LINK_PREFIX` = LINK_PREFIX, `LINK_SUFFIX` = LINK_SUFFIX,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:exportpolygonstohtmlimagemap", `POLYGONS` = POLYGONS, `LINK` = LINK, `TITLE` = TITLE, `FILE` = FILE, `LINK_PREFIX` = LINK_PREFIX, `LINK_SUFFIX` = LINK_SUFFIX,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NA")
  }
}