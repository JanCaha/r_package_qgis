##' QGIS Algorithm provided by GDAL Dissolve (gdal:dissolve). ---------------- Arguments ----------------  INPUT: Input layer 	Argument type:	source 	Acceptable values: 		- Path to a vector layer FIELD: Dissolve field (optional) 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names GEOMETRY: Geometry column name 	Default value:	geometry 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression EXPLODE_COLLECTIONS: Produce one feature for each geometry in any kind of geometry collection in the source file 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression KEEP_ATTRIBUTES: Keep input attributes 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression COUNT_FEATURES: Count dissolved features 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression COMPUTE_AREA: Compute area and perimeter of dissolved features 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression COMPUTE_STATISTICS: Compute min/max/sum/mean for attribute 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression STATISTICS_ATTRIBUTE: Numeric attribute to calculate statistics on (optional) 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names OPTIONS: Additional creation options (optional) 	Default value:	 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression OUTPUT: Dissolved 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer
##'
##' @title QGIS algorithm - Dissolve
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param FIELD `field` - Dissolve field. The name of an existing field. ; delimited list of existing field names.
##' @param GEOMETRY `string` - Geometry column name. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param EXPLODE_COLLECTIONS `boolean` - Produce one feature for each geometry in any kind of geometry collection in the source file. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param KEEP_ATTRIBUTES `boolean` - Keep input attributes. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param COUNT_FEATURES `boolean` - Count dissolved features. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param COMPUTE_AREA `boolean` - Compute area and perimeter of dissolved features. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param COMPUTE_STATISTICS `boolean` - Compute min\code{/}max\code{/}sum\code{/}mean for attribute. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param STATISTICS_ATTRIBUTE `field` - Numeric attribute to calculate statistics on. The name of an existing field. ; delimited list of existing field names.
##' @param OPTIONS `string` - Additional creation options. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `vectorDestination` - Dissolved. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Dissolved
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

gdal_dissolve <- function(INPUT = qgisprocess:::qgis_default_value(), FIELD = qgisprocess:::qgis_default_value(), GEOMETRY = qgisprocess:::qgis_default_value(), EXPLODE_COLLECTIONS = qgisprocess:::qgis_default_value(), KEEP_ATTRIBUTES = qgisprocess:::qgis_default_value(), COUNT_FEATURES = qgisprocess:::qgis_default_value(), COMPUTE_AREA = qgisprocess:::qgis_default_value(), COMPUTE_STATISTICS = qgisprocess:::qgis_default_value(), STATISTICS_ATTRIBUTE = qgisprocess:::qgis_default_value(), OPTIONS = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("gdal:dissolve")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("gdal:dissolve", `INPUT` = INPUT, `FIELD` = FIELD, `GEOMETRY` = GEOMETRY, `EXPLODE_COLLECTIONS` = EXPLODE_COLLECTIONS, `KEEP_ATTRIBUTES` = KEEP_ATTRIBUTES, `COUNT_FEATURES` = COUNT_FEATURES, `COMPUTE_AREA` = COMPUTE_AREA, `COMPUTE_STATISTICS` = COMPUTE_STATISTICS, `STATISTICS_ATTRIBUTE` = STATISTICS_ATTRIBUTE, `OPTIONS` = OPTIONS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("gdal:dissolve", `INPUT` = INPUT, `FIELD` = FIELD, `GEOMETRY` = GEOMETRY, `EXPLODE_COLLECTIONS` = EXPLODE_COLLECTIONS, `KEEP_ATTRIBUTES` = KEEP_ATTRIBUTES, `COUNT_FEATURES` = COUNT_FEATURES, `COMPUTE_AREA` = COMPUTE_AREA, `COMPUTE_STATISTICS` = COMPUTE_STATISTICS, `STATISTICS_ATTRIBUTE` = STATISTICS_ATTRIBUTE, `OPTIONS` = OPTIONS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}