##' QGIS Algorithm provided by SAGA Next Gen Transform vector layer (sagang:transformvectorlayer). ---------------- Arguments ----------------  SHAPES: Shapes 	Argument type:	source 	Acceptable values: 		- Path to a vector layer TRANSFORM: Transformed Shapes 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer MOVEX: X 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression MOVEY: Y 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression MOVEZ: Z 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression ANCHORX: X 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression ANCHORY: Y 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression ANCHORZ: Z 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SCALEX: X 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SCALEY: Y 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SCALEZ: Z 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression ROTATEX: X 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression ROTATEY: Y 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression ROTATEZ: Z 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Transform vector layer
##'
##' @param SHAPES `source` - Shapes. Path to a vector layer.
##' @param TRANSFORM `vectorDestination` - Transformed Shapes. Path for new vector layer.
##' @param MOVEX `number` - X. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param MOVEY `number` - Y. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param MOVEZ `number` - Z. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ANCHORX `number` - X. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ANCHORY `number` - Y. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ANCHORZ `number` - Z. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SCALEX `number` - X. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SCALEY `number` - Y. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SCALEZ `number` - Z. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ROTATEX `number` - X. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ROTATEY `number` - Y. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ROTATEZ `number` - Z. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * TRANSFORM - outputVector - Transformed Shapes
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_transformvectorlayer <- function(SHAPES = qgisprocess:::qgis_default_value(), TRANSFORM = qgisprocess:::qgis_default_value(), MOVEX = qgisprocess:::qgis_default_value(), MOVEY = qgisprocess:::qgis_default_value(), MOVEZ = qgisprocess:::qgis_default_value(), ANCHORX = qgisprocess:::qgis_default_value(), ANCHORY = qgisprocess:::qgis_default_value(), ANCHORZ = qgisprocess:::qgis_default_value(), SCALEX = qgisprocess:::qgis_default_value(), SCALEY = qgisprocess:::qgis_default_value(), SCALEZ = qgisprocess:::qgis_default_value(), ROTATEX = qgisprocess:::qgis_default_value(), ROTATEY = qgisprocess:::qgis_default_value(), ROTATEZ = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:transformvectorlayer")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:transformvectorlayer", `SHAPES` = SHAPES, `TRANSFORM` = TRANSFORM, `MOVEX` = MOVEX, `MOVEY` = MOVEY, `MOVEZ` = MOVEZ, `ANCHORX` = ANCHORX, `ANCHORY` = ANCHORY, `ANCHORZ` = ANCHORZ, `SCALEX` = SCALEX, `SCALEY` = SCALEY, `SCALEZ` = SCALEZ, `ROTATEX` = ROTATEX, `ROTATEY` = ROTATEY, `ROTATEZ` = ROTATEZ,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:transformvectorlayer", `SHAPES` = SHAPES, `TRANSFORM` = TRANSFORM, `MOVEX` = MOVEX, `MOVEY` = MOVEY, `MOVEZ` = MOVEZ, `ANCHORX` = ANCHORX, `ANCHORY` = ANCHORY, `ANCHORZ` = ANCHORZ, `SCALEX` = SCALEX, `SCALEY` = SCALEY, `SCALEZ` = SCALEZ, `ROTATEX` = ROTATEX, `ROTATEY` = ROTATEY, `ROTATEZ` = ROTATEZ,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "TRANSFORM")
  }
}