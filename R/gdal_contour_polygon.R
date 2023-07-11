##' QGIS Algorithm provided by GDAL Contour Polygons (gdal:contour_polygon). ---------------- Arguments ----------------  INPUT: Input layer 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer BAND: Band number 	Default value:	1 	Argument type:	band 	Acceptable values: 		- Integer value representing an existing raster band number INTERVAL: Interval between contour lines 	Default value:	10 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression CREATE_3D: Produce 3D vector 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression IGNORE_NODATA: Treat all raster values as valid 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression NODATA: Input pixel value to treat as "nodata" (optional) 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression OFFSET: Offset from zero relative to which to interpret intervals (optional) 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression EXTRA: Additional command-line parameters (optional) 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression FIELD_NAME_MIN: Attribute name for minimum elevation of contour polygon (optional) 	Default value:	ELEV_MIN 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression FIELD_NAME_MAX: Attribute name for maximum elevation of contour polygon (optional) 	Default value:	ELEV_MAX 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression OUTPUT: Contours 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer
##'
##' @title QGIS algorithm - Contour Polygons
##'
##' @param INPUT `raster` - Input layer. Path to a raster layer.
##' @param BAND `band` - Band number. Integer value representing an existing raster band number.
##' @param INTERVAL `number` - Interval between contour lines. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param CREATE_3D `boolean` - Produce 3D vector. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param IGNORE_NODATA `boolean` - Treat all raster values as valid. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param NODATA `number` - Input pixel value to treat as "nodata". A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OFFSET `number` - Offset from zero relative to which to interpret intervals. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param EXTRA `string` - Additional command-line parameters. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param FIELD_NAME_MIN `string` - Attribute name for minimum elevation of contour polygon. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param FIELD_NAME_MAX `string` - Attribute name for maximum elevation of contour polygon. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `vectorDestination` - Contours. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Contours
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

gdal_contour_polygon <- function(INPUT = qgisprocess:::qgis_default_value(), BAND = qgisprocess:::qgis_default_value(), INTERVAL = qgisprocess:::qgis_default_value(), CREATE_3D = qgisprocess:::qgis_default_value(), IGNORE_NODATA = qgisprocess:::qgis_default_value(), NODATA = qgisprocess:::qgis_default_value(), OFFSET = qgisprocess:::qgis_default_value(), EXTRA = qgisprocess:::qgis_default_value(), FIELD_NAME_MIN = qgisprocess:::qgis_default_value(), FIELD_NAME_MAX = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("gdal:contour_polygon")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("gdal:contour_polygon", `INPUT` = INPUT, `BAND` = BAND, `INTERVAL` = INTERVAL, `CREATE_3D` = CREATE_3D, `IGNORE_NODATA` = IGNORE_NODATA, `NODATA` = NODATA, `OFFSET` = OFFSET, `EXTRA` = EXTRA, `FIELD_NAME_MIN` = FIELD_NAME_MIN, `FIELD_NAME_MAX` = FIELD_NAME_MAX, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("gdal:contour_polygon", `INPUT` = INPUT, `BAND` = BAND, `INTERVAL` = INTERVAL, `CREATE_3D` = CREATE_3D, `IGNORE_NODATA` = IGNORE_NODATA, `NODATA` = NODATA, `OFFSET` = OFFSET, `EXTRA` = EXTRA, `FIELD_NAME_MIN` = FIELD_NAME_MIN, `FIELD_NAME_MAX` = FIELD_NAME_MAX, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}