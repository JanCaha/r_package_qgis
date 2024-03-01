##' QGIS Algorithm provided by SAGA Next Gen Export shapes to xyz (sagang:exportshapestoxyz). ---------------- Arguments ----------------  POINTS: Shapes 	Argument type:	source 	Acceptable values: 		- Path to a vector layer FIELD: Attribute 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names HEADER: Save Table Header 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SEPARATE: Separate Line/Polygon Points 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) none 		- 1: (1) * 		- 2: (2) number of points 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' FILENAME: File 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file
##'
##' @title QGIS algorithm - Export shapes to xyz
##'
##' @param POINTS `source` - Shapes. Path to a vector layer.
##' @param FIELD `field` - Attribute. The name of an existing field. ; delimited list of existing field names.
##' @param HEADER `boolean` - Save Table Header. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SEPARATE `enum`  of `("(0) none", "(1) *", "(2) number of points")` - Separate Line\code{/}Polygon Points. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
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

sagang_exportshapestoxyz <- function(POINTS = qgisprocess:::qgis_default_value(), FIELD = qgisprocess:::qgis_default_value(), HEADER = qgisprocess:::qgis_default_value(), SEPARATE = qgisprocess:::qgis_default_value(), FILENAME = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:exportshapestoxyz")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:exportshapestoxyz", `POINTS` = POINTS, `FIELD` = FIELD, `HEADER` = HEADER, `SEPARATE` = SEPARATE, `FILENAME` = FILENAME,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:exportshapestoxyz", `POINTS` = POINTS, `FIELD` = FIELD, `HEADER` = HEADER, `SEPARATE` = SEPARATE, `FILENAME` = FILENAME,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NA")
  }
}