##' QGIS Algorithm provided by SAGA Next Gen Split shapes layer randomly (sagang:splitshapeslayerrandomly). ---------------- Arguments ----------------  SHAPES: Shapes 	Argument type:	source 	Acceptable values: 		- Path to a vector layer FIELD: Categories 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names A: Group A 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer B: Group B 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer PERCENT: Relation B / A 	Default value:	25 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression EXACT: Exact 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Split shapes layer randomly
##'
##' @param SHAPES `source` - Shapes. Path to a vector layer.
##' @param FIELD `field` - Categories. The name of an existing field. ; delimited list of existing field names.
##' @param A `vectorDestination` - Group A. Path for new vector layer.
##' @param B `vectorDestination` - Group B. Path for new vector layer.
##' @param PERCENT `number` - Relation B \code{/} A. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param EXACT `boolean` - Exact. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * A - outputVector - Group A
##' * B - outputVector - Group B
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_splitshapeslayerrandomly <- function(SHAPES = qgisprocess:::qgis_default_value(), FIELD = qgisprocess:::qgis_default_value(), A = qgisprocess:::qgis_default_value(), B = qgisprocess:::qgis_default_value(), PERCENT = qgisprocess:::qgis_default_value(), EXACT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:splitshapeslayerrandomly")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:splitshapeslayerrandomly", `SHAPES` = SHAPES, `FIELD` = FIELD, `A` = A, `B` = B, `PERCENT` = PERCENT, `EXACT` = EXACT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:splitshapeslayerrandomly", `SHAPES` = SHAPES, `FIELD` = FIELD, `A` = A, `B` = B, `PERCENT` = PERCENT, `EXACT` = EXACT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "A")
  }
}