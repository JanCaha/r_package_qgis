##' QGIS Algorithm provided by SAGA Next Gen Export text table (sagang:exporttexttable). ---------------- Arguments ----------------  TABLE: Table 	Argument type:	source 	Acceptable values: 		- Path to a vector layer HEADLINE: Headline 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression STRQUOTA: Strings in Quota 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SEPARATOR: Separator 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) tabulator 		- 1: (1)  		- 2:  		- 3: (2) , 		- 4: (3) space 		- 5: (4) other 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' SEP_OTHER: other 	Default value:	* 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression FILENAME: File 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file
##'
##' @title QGIS algorithm - Export text table
##'
##' @param TABLE `source` - Table. Path to a vector layer.
##' @param HEADLINE `boolean` - Headline. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param STRQUOTA `boolean` - Strings in Quota. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SEPARATOR `enum`  of `("(0) tabulator", "(1) ", "", "(2) ,", "(3) space", "(4) other")` - Separator. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SEP_OTHER `string` - other. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param FILENAME `file` - File. Path to a file.
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

sagang_exporttexttable <- function(TABLE = qgisprocess:::qgis_default_value(), HEADLINE = qgisprocess:::qgis_default_value(), STRQUOTA = qgisprocess:::qgis_default_value(), SEPARATOR = qgisprocess:::qgis_default_value(), SEP_OTHER = qgisprocess:::qgis_default_value(), FILENAME = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:exporttexttable")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:exporttexttable", `TABLE` = TABLE, `HEADLINE` = HEADLINE, `STRQUOTA` = STRQUOTA, `SEPARATOR` = SEPARATOR, `SEP_OTHER` = SEP_OTHER, `FILENAME` = FILENAME,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:exporttexttable", `TABLE` = TABLE, `HEADLINE` = HEADLINE, `STRQUOTA` = STRQUOTA, `SEPARATOR` = SEPARATOR, `SEP_OTHER` = SEP_OTHER, `FILENAME` = FILENAME,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NA")
  }
}