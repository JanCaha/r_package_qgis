##' QGIS Algorithm provided by SAGA Next Gen Polygon clipping (sagang:polygonclipping). ---------------- Arguments ----------------  CLIP: Clip Features 	Argument type:	source 	Acceptable values: 		- Path to a vector layer S_INPUT: Input Features 	Argument type:	source 	Acceptable values: 		- Path to a vector layer S_OUTPUT: Output Features 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer M_INPUT: Input Features 	Argument type:	multilayer M_OUTPUT: Output Features 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer DISSOLVE: Dissolve Clip Features 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression MULTIPLE: Multiple Input Features 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Polygon clipping
##'
##' @param CLIP `source` - Clip Features. Path to a vector layer.
##' @param S_INPUT `source` - Input Features. Path to a vector layer.
##' @param S_OUTPUT `vectorDestination` - Output Features. Path for new vector layer.
##' @param M_INPUT `multilayer` - Input Features. .
##' @param M_OUTPUT `vectorDestination` - Output Features. Path for new vector layer.
##' @param DISSOLVE `boolean` - Dissolve Clip Features. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param MULTIPLE `boolean` - Multiple Input Features. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * M_OUTPUT - outputVector - Output Features
##' * S_OUTPUT - outputVector - Output Features
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_polygonclipping <- function(CLIP = qgisprocess:::qgis_default_value(), S_INPUT = qgisprocess:::qgis_default_value(), S_OUTPUT = qgisprocess:::qgis_default_value(), M_INPUT = qgisprocess:::qgis_default_value(), M_OUTPUT = qgisprocess:::qgis_default_value(), DISSOLVE = qgisprocess:::qgis_default_value(), MULTIPLE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:polygonclipping")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:polygonclipping", `CLIP` = CLIP, `S_INPUT` = S_INPUT, `S_OUTPUT` = S_OUTPUT, `M_INPUT` = M_INPUT, `M_OUTPUT` = M_OUTPUT, `DISSOLVE` = DISSOLVE, `MULTIPLE` = MULTIPLE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:polygonclipping", `CLIP` = CLIP, `S_INPUT` = S_INPUT, `S_OUTPUT` = S_OUTPUT, `M_INPUT` = M_INPUT, `M_OUTPUT` = M_OUTPUT, `DISSOLVE` = DISSOLVE, `MULTIPLE` = MULTIPLE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "M_OUTPUT")
  }
}