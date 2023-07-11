##' QGIS Algorithm provided by SAGA Next Gen Import building sketches from citygml (sagang:importbuildingsketchesfromcitygml). ---------------- Arguments ----------------  BUILDINGS: Buildings 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer FILES: Files 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file PARTS: Check for Building Parts 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Import building sketches from citygml
##'
##' @param BUILDINGS `vectorDestination` - Buildings. Path for new vector layer.
##' @param FILES `file` - Files. Path to a file.
##' @param PARTS `boolean` - Check for Building Parts. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * BUILDINGS - outputVector - Buildings
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_importbuildingsketchesfromcitygml <- function(BUILDINGS = qgisprocess:::qgis_default_value(), FILES = qgisprocess:::qgis_default_value(), PARTS = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:importbuildingsketchesfromcitygml")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:importbuildingsketchesfromcitygml", `BUILDINGS` = BUILDINGS, `FILES` = FILES, `PARTS` = PARTS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:importbuildingsketchesfromcitygml", `BUILDINGS` = BUILDINGS, `FILES` = FILES, `PARTS` = PARTS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "BUILDINGS")
  }
}