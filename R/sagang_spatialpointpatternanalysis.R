##' QGIS Algorithm provided by SAGA Next Gen Spatial point pattern analysis (sagang:spatialpointpatternanalysis). ---------------- Arguments ----------------  POINTS: Points 	Argument type:	source 	Acceptable values: 		- Path to a vector layer WEIGHT: Weight 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names CENTRE: Mean Centre 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer STDDIST: Standard Distance 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer STEP: Vertex Distance (Degree) 	Default value:	5 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression BBOX: Bounding Box 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer
##'
##' @title QGIS algorithm - Spatial point pattern analysis
##'
##' @param POINTS `source` - Points. Path to a vector layer.
##' @param WEIGHT `field` - Weight. The name of an existing field. ; delimited list of existing field names.
##' @param CENTRE `vectorDestination` - Mean Centre. Path for new vector layer.
##' @param STDDIST `vectorDestination` - Standard Distance. Path for new vector layer.
##' @param STEP `number` - Vertex Distance (Degree). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param BBOX `vectorDestination` - Bounding Box. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * BBOX - outputVector - Bounding Box
##' * CENTRE - outputVector - Mean Centre
##' * STDDIST - outputVector - Standard Distance
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_spatialpointpatternanalysis <- function(POINTS = qgisprocess:::qgis_default_value(), WEIGHT = qgisprocess:::qgis_default_value(), CENTRE = qgisprocess:::qgis_default_value(), STDDIST = qgisprocess:::qgis_default_value(), STEP = qgisprocess:::qgis_default_value(), BBOX = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:spatialpointpatternanalysis")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:spatialpointpatternanalysis", `POINTS` = POINTS, `WEIGHT` = WEIGHT, `CENTRE` = CENTRE, `STDDIST` = STDDIST, `STEP` = STEP, `BBOX` = BBOX,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:spatialpointpatternanalysis", `POINTS` = POINTS, `WEIGHT` = WEIGHT, `CENTRE` = CENTRE, `STDDIST` = STDDIST, `STEP` = STEP, `BBOX` = BBOX,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "BBOX")
  }
}