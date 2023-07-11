##' QGIS Algorithm provided by SAGA Next Gen Shapes buffer (sagang:shapesbuffer). ---------------- Arguments ----------------  SHAPES: Shapes 	Argument type:	source 	Acceptable values: 		- Path to a vector layer BUFFER: Buffer 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer DIST_FIELD: Buffer Distance 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names DIST_FIELD_DEFAULT: Default 	Default value:	100 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DIST_SCALE: Scaling Factor for Attribute Value 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DISSOLVE: Dissolve Buffers 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression NZONES: Number of Buffer Zones 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression POLY_INNER: Inner Buffer 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DARC: Arc Vertex Distance (Degree) 	Default value:	5 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Shapes buffer
##'
##' @param SHAPES `source` - Shapes. Path to a vector layer.
##' @param BUFFER `vectorDestination` - Buffer. Path for new vector layer.
##' @param DIST_FIELD `field` - Buffer Distance. The name of an existing field. ; delimited list of existing field names.
##' @param DIST_FIELD_DEFAULT `number` - Default. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DIST_SCALE `number` - Scaling Factor for Attribute Value. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DISSOLVE `boolean` - Dissolve Buffers. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param NZONES `number` - Number of Buffer Zones. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param POLY_INNER `boolean` - Inner Buffer. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DARC `number` - Arc Vertex Distance (Degree). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * BUFFER - outputVector - Buffer
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_shapesbuffer <- function(SHAPES = qgisprocess:::qgis_default_value(), BUFFER = qgisprocess:::qgis_default_value(), DIST_FIELD = qgisprocess:::qgis_default_value(), DIST_FIELD_DEFAULT = qgisprocess:::qgis_default_value(), DIST_SCALE = qgisprocess:::qgis_default_value(), DISSOLVE = qgisprocess:::qgis_default_value(), NZONES = qgisprocess:::qgis_default_value(), POLY_INNER = qgisprocess:::qgis_default_value(), DARC = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:shapesbuffer")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:shapesbuffer", `SHAPES` = SHAPES, `BUFFER` = BUFFER, `DIST_FIELD` = DIST_FIELD, `DIST_FIELD_DEFAULT` = DIST_FIELD_DEFAULT, `DIST_SCALE` = DIST_SCALE, `DISSOLVE` = DISSOLVE, `NZONES` = NZONES, `POLY_INNER` = POLY_INNER, `DARC` = DARC,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:shapesbuffer", `SHAPES` = SHAPES, `BUFFER` = BUFFER, `DIST_FIELD` = DIST_FIELD, `DIST_FIELD_DEFAULT` = DIST_FIELD_DEFAULT, `DIST_SCALE` = DIST_SCALE, `DISSOLVE` = DISSOLVE, `NZONES` = NZONES, `POLY_INNER` = POLY_INNER, `DARC` = DARC,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "BUFFER")
  }
}