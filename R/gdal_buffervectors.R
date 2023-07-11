##' QGIS Algorithm provided by GDAL Buffer vectors (gdal:buffervectors). ---------------- Arguments ----------------  INPUT: Input layer 	Argument type:	source 	Acceptable values: 		- Path to a vector layer GEOMETRY: Geometry column name 	Default value:	geometry 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DISTANCE: Buffer distance 	Default value:	10 	Argument type:	distance 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression FIELD: Dissolve by attribute (optional) 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names DISSOLVE: Dissolve all results 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression EXPLODE_COLLECTIONS: Produce one feature for each geometry in any kind of geometry collection in the source file 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression OPTIONS: Additional creation options (optional) 	Default value:	 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression OUTPUT: Buffer 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer
##'
##' @title QGIS algorithm - Buffer vectors
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param GEOMETRY `string` - Geometry column name. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DISTANCE `distance` - Buffer distance. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param FIELD `field` - Dissolve by attribute. The name of an existing field. ; delimited list of existing field names.
##' @param DISSOLVE `boolean` - Dissolve all results. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param EXPLODE_COLLECTIONS `boolean` - Produce one feature for each geometry in any kind of geometry collection in the source file. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OPTIONS `string` - Additional creation options. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `vectorDestination` - Buffer. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Buffer
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

gdal_buffervectors <- function(INPUT = qgisprocess:::qgis_default_value(), GEOMETRY = qgisprocess:::qgis_default_value(), DISTANCE = qgisprocess:::qgis_default_value(), FIELD = qgisprocess:::qgis_default_value(), DISSOLVE = qgisprocess:::qgis_default_value(), EXPLODE_COLLECTIONS = qgisprocess:::qgis_default_value(), OPTIONS = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("gdal:buffervectors")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("gdal:buffervectors", `INPUT` = INPUT, `GEOMETRY` = GEOMETRY, `DISTANCE` = DISTANCE, `FIELD` = FIELD, `DISSOLVE` = DISSOLVE, `EXPLODE_COLLECTIONS` = EXPLODE_COLLECTIONS, `OPTIONS` = OPTIONS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("gdal:buffervectors", `INPUT` = INPUT, `GEOMETRY` = GEOMETRY, `DISTANCE` = DISTANCE, `FIELD` = FIELD, `DISSOLVE` = DISSOLVE, `EXPLODE_COLLECTIONS` = EXPLODE_COLLECTIONS, `OPTIONS` = OPTIONS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}