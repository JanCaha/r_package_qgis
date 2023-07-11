##' QGIS Algorithm provided by SAGA Next Gen Convert lines to polygons (sagang:convertlinestopolygons). ---------------- Arguments ----------------  POLYGONS: Polygons 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer LINES: Lines 	Argument type:	source 	Acceptable values: 		- Path to a vector layer SINGLE: Create Single Multipart Polygon 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression MERGE: Merge Line Parts to One Polygon 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Convert lines to polygons
##'
##' @param POLYGONS `vectorDestination` - Polygons. Path for new vector layer.
##' @param LINES `source` - Lines. Path to a vector layer.
##' @param SINGLE `boolean` - Create Single Multipart Polygon. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param MERGE `boolean` - Merge Line Parts to One Polygon. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * POLYGONS - outputVector - Polygons
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_convertlinestopolygons <- function(POLYGONS = qgisprocess:::qgis_default_value(), LINES = qgisprocess:::qgis_default_value(), SINGLE = qgisprocess:::qgis_default_value(), MERGE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:convertlinestopolygons")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:convertlinestopolygons", `POLYGONS` = POLYGONS, `LINES` = LINES, `SINGLE` = SINGLE, `MERGE` = MERGE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:convertlinestopolygons", `POLYGONS` = POLYGONS, `LINES` = LINES, `SINGLE` = SINGLE, `MERGE` = MERGE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "POLYGONS")
  }
}