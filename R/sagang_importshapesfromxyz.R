##' QGIS Algorithm provided by SAGA Next Gen Import shapes from xyz (sagang:importshapesfromxyz). ---------------- Arguments ----------------  POINTS: Points 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer HEADLINE: File contains headline 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression FILENAME: File 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file
##'
##' @title QGIS algorithm - Import shapes from xyz
##'
##' @param POINTS `vectorDestination` - Points. Path for new vector layer.
##' @param HEADLINE `boolean` - File contains headline. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param FILENAME `file` - File. Path to a file.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * POINTS - outputVector - Points
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_importshapesfromxyz <- function(POINTS = qgisprocess:::qgis_default_value(), HEADLINE = qgisprocess:::qgis_default_value(), FILENAME = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:importshapesfromxyz")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:importshapesfromxyz", `POINTS` = POINTS, `HEADLINE` = HEADLINE, `FILENAME` = FILENAME,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:importshapesfromxyz", `POINTS` = POINTS, `HEADLINE` = HEADLINE, `FILENAME` = FILENAME,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "POINTS")
  }
}