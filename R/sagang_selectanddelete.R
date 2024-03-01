##' QGIS Algorithm provided by SAGA Next Gen Select and delete (sagang:selectanddelete). ---------------- Arguments ----------------  SHAPES: Shapes 	Argument type:	source 	Acceptable values: 		- Path to a vector layer ATTRIBUTE: Attribute 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names METHOD: Expression Type 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) string expression 		- 1: (1) numerical expression 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' EXPRESSION: Expression 	Default value:	expression 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression COMPARE: Select if... 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) attribute is identical with search expression 		- 1: (1) attribute contains search expression 		- 2: (2) attribute is contained in search expression 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' CASE: Case Sensitive 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Select and delete
##'
##' @param SHAPES `source` - Shapes. Path to a vector layer.
##' @param ATTRIBUTE `field` - Attribute. The name of an existing field. ; delimited list of existing field names.
##' @param METHOD `enum`  of `("(0) string expression", "(1) numerical expression")` - Expression Type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param EXPRESSION `string` - Expression. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param COMPARE `enum`  of `("(0) attribute is identical with search expression", "(1) attribute contains search expression", "(2) attribute is contained in search expression")` - Select if.... Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param CASE `boolean` - Case Sensitive. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
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

sagang_selectanddelete <- function(SHAPES = qgisprocess:::qgis_default_value(), ATTRIBUTE = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), EXPRESSION = qgisprocess:::qgis_default_value(), COMPARE = qgisprocess:::qgis_default_value(), CASE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:selectanddelete")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:selectanddelete", `SHAPES` = SHAPES, `ATTRIBUTE` = ATTRIBUTE, `METHOD` = METHOD, `EXPRESSION` = EXPRESSION, `COMPARE` = COMPARE, `CASE` = CASE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:selectanddelete", `SHAPES` = SHAPES, `ATTRIBUTE` = ATTRIBUTE, `METHOD` = METHOD, `EXPRESSION` = EXPRESSION, `COMPARE` = COMPARE, `CASE` = CASE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NA")
  }
}