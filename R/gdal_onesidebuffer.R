##' QGIS Algorithm provided by GDAL One side buffer (gdal:onesidebuffer). ---------------- Arguments ----------------  INPUT: Input layer 	Argument type:	source 	Acceptable values: 		- Path to a vector layer GEOMETRY: Geometry column name 	Default value:	geometry 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DISTANCE: Buffer distance 	Default value:	10 	Argument type:	distance 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression BUFFER_SIDE: Buffer side 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: Right 		- 1: Left 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' FIELD: Dissolve by attribute (optional) 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names DISSOLVE: Dissolve all results 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression EXPLODE_COLLECTIONS: Produce one feature for each geometry in any kind of geometry collection in the source file 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression OPTIONS: Additional creation options (optional) 	Default value:	 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression OUTPUT: One-sided buffer 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer
##'
##' @title QGIS algorithm - One side buffer
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param GEOMETRY `string` - Geometry column name. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DISTANCE `distance` - Buffer distance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param BUFFER_SIDE `enum`  of `("Right", "Left")` - Buffer side. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param FIELD `field` - Dissolve by attribute. The name of an existing field. ; delimited list of existing field names.
##' @param DISSOLVE `boolean` - Dissolve all results. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param EXPLODE_COLLECTIONS `boolean` - Produce one feature for each geometry in any kind of geometry collection in the source file. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OPTIONS `string` - Additional creation options. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `vectorDestination` - One-sided buffer. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - One-sided buffer
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

gdal_onesidebuffer <- function(INPUT = qgisprocess:::qgis_default_value(), GEOMETRY = qgisprocess:::qgis_default_value(), DISTANCE = qgisprocess:::qgis_default_value(), BUFFER_SIDE = qgisprocess:::qgis_default_value(), FIELD = qgisprocess:::qgis_default_value(), DISSOLVE = qgisprocess:::qgis_default_value(), EXPLODE_COLLECTIONS = qgisprocess:::qgis_default_value(), OPTIONS = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("gdal:onesidebuffer")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("gdal:onesidebuffer", `INPUT` = INPUT, `GEOMETRY` = GEOMETRY, `DISTANCE` = DISTANCE, `BUFFER_SIDE` = BUFFER_SIDE, `FIELD` = FIELD, `DISSOLVE` = DISSOLVE, `EXPLODE_COLLECTIONS` = EXPLODE_COLLECTIONS, `OPTIONS` = OPTIONS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("gdal:onesidebuffer", `INPUT` = INPUT, `GEOMETRY` = GEOMETRY, `DISTANCE` = DISTANCE, `BUFFER_SIDE` = BUFFER_SIDE, `FIELD` = FIELD, `DISSOLVE` = DISSOLVE, `EXPLODE_COLLECTIONS` = EXPLODE_COLLECTIONS, `OPTIONS` = OPTIONS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}