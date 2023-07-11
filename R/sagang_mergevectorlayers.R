##' QGIS Algorithm provided by SAGA Next Gen Merge vector layers (sagang:mergevectorlayers). ---------------- Arguments ----------------  INPUT: Layers 	Argument type:	multilayer MERGED: Merged Layer 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer SRCINFO: Add Source Information 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression MATCH: Match Fields by Name 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DELETE: Delete 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Merge vector layers
##'
##' @param INPUT `multilayer` - Layers. .
##' @param MERGED `vectorDestination` - Merged Layer. Path for new vector layer.
##' @param SRCINFO `boolean` - Add Source Information. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param MATCH `boolean` - Match Fields by Name. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DELETE `boolean` - Delete. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * MERGED - outputVector - Merged Layer
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_mergevectorlayers <- function(INPUT = qgisprocess:::qgis_default_value(), MERGED = qgisprocess:::qgis_default_value(), SRCINFO = qgisprocess:::qgis_default_value(), MATCH = qgisprocess:::qgis_default_value(), DELETE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:mergevectorlayers")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:mergevectorlayers", `INPUT` = INPUT, `MERGED` = MERGED, `SRCINFO` = SRCINFO, `MATCH` = MATCH, `DELETE` = DELETE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:mergevectorlayers", `INPUT` = INPUT, `MERGED` = MERGED, `SRCINFO` = SRCINFO, `MATCH` = MATCH, `DELETE` = DELETE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "MERGED")
  }
}