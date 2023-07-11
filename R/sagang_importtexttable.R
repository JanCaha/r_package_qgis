##' QGIS Algorithm provided by SAGA Next Gen Import text table (sagang:importtexttable). ---------------- Arguments ----------------  TABLE: Table 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer HEADLINE: Headline 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SEPARATOR: Separator 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) tabulator 		- 1: (1)  		- 2:  		- 3: (2) , 		- 4: (3) space 		- 5: (4) other 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' ENCODING: Encoding 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) ANSI 		- 1: (1) UTF-7 		- 2: (2) UTF-8 		- 3: (3) UTF-16 (Little Endian) 		- 4: (4) UTF-16 (Big Endian) 		- 5: (5) UTF-32 (Little Endian) 		- 6: (6) UTF-32 (Big Endian) 		- 7: (7) default 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' SEP_OTHER: Separator (other) 	Default value:	* 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression FILENAME: File 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file
##'
##' @title QGIS algorithm - Import text table
##'
##' @param TABLE `vectorDestination` - Table. Path for new vector layer.
##' @param HEADLINE `boolean` - Headline. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SEPARATOR `enum`  of `("(0) tabulator", "(1) ", "", "(2) ,", "(3) space", "(4) other")` - Separator. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ENCODING `enum`  of `("(0) ANSI", "(1) UTF-7", "(2) UTF-8", "(3) UTF-16 (Little Endian)", "(4) UTF-16 (Big Endian)", "(5) UTF-32 (Little Endian)", "(6) UTF-32 (Big Endian)", "(7) default")` - Encoding. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SEP_OTHER `string` - Separator (other). String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param FILENAME `file` - File. Path to a file.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * TABLE - outputVector - Table
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_importtexttable <- function(TABLE = qgisprocess:::qgis_default_value(), HEADLINE = qgisprocess:::qgis_default_value(), SEPARATOR = qgisprocess:::qgis_default_value(), ENCODING = qgisprocess:::qgis_default_value(), SEP_OTHER = qgisprocess:::qgis_default_value(), FILENAME = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:importtexttable")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:importtexttable", `TABLE` = TABLE, `HEADLINE` = HEADLINE, `SEPARATOR` = SEPARATOR, `ENCODING` = ENCODING, `SEP_OTHER` = SEP_OTHER, `FILENAME` = FILENAME,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:importtexttable", `TABLE` = TABLE, `HEADLINE` = HEADLINE, `SEPARATOR` = SEPARATOR, `ENCODING` = ENCODING, `SEP_OTHER` = SEP_OTHER, `FILENAME` = FILENAME,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "TABLE")
  }
}