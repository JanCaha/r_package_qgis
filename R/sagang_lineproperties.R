##' QGIS Algorithm provided by SAGA Next Gen Line properties (sagang:lineproperties). ---------------- Arguments ----------------  LINES: Lines 	Argument type:	source 	Acceptable values: 		- Path to a vector layer OUTPUT: Lines with Property Attributes 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer BPARTS: Number of Parts 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression BPOINTS: Number of Vertices 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression BLENGTH: Length 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Line properties
##'
##' @param LINES `source` - Lines. Path to a vector layer.
##' @param OUTPUT `vectorDestination` - Lines with Property Attributes. Path for new vector layer.
##' @param BPARTS `boolean` - Number of Parts. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param BPOINTS `boolean` - Number of Vertices. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param BLENGTH `boolean` - Length. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Lines with Property Attributes
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_lineproperties <- function(LINES = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(), BPARTS = qgisprocess:::qgis_default_value(), BPOINTS = qgisprocess:::qgis_default_value(), BLENGTH = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:lineproperties")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:lineproperties", `LINES` = LINES, `OUTPUT` = OUTPUT, `BPARTS` = BPARTS, `BPOINTS` = BPOINTS, `BLENGTH` = BLENGTH,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:lineproperties", `LINES` = LINES, `OUTPUT` = OUTPUT, `BPARTS` = BPARTS, `BPOINTS` = BPOINTS, `BLENGTH` = BLENGTH,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}