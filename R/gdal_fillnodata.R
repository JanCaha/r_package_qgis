##' QGIS Algorithm provided by GDAL Fill nodata (gdal:fillnodata). ---------------- Arguments ----------------  INPUT: Input layer 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer BAND: Band number 	Default value:	1 	Argument type:	band 	Acceptable values: 		- Integer value representing an existing raster band number DISTANCE: Maximum distance (in pixels) to search out for values to interpolate 	Default value:	10 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression ITERATIONS: Number of smoothing iterations to run after the interpolation 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression NO_MASK: Do not use the default validity mask for the input band 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression MASK_LAYER: Validity mask (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer OPTIONS: Additional creation options (optional) 	Default value:	 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression EXTRA: Additional command-line parameters (optional) 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression OUTPUT: Filled 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer
##'
##' @title QGIS algorithm - Fill nodata
##'
##' @param INPUT `raster` - Input layer. Path to a raster layer.
##' @param BAND `band` - Band number. Integer value representing an existing raster band number.
##' @param DISTANCE `number` - Maximum distance (in pixels) to search out for values to interpolate. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ITERATIONS `number` - Number of smoothing iterations to run after the interpolation. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param NO_MASK `boolean` - Do not use the default validity mask for the input band. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param MASK_LAYER `raster` - Validity mask. Path to a raster layer.
##' @param OPTIONS `string` - Additional creation options. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param EXTRA `string` - Additional command-line parameters. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `rasterDestination` - Filled. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Filled
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

gdal_fillnodata <- function(INPUT = qgisprocess:::qgis_default_value(), BAND = qgisprocess:::qgis_default_value(), DISTANCE = qgisprocess:::qgis_default_value(), ITERATIONS = qgisprocess:::qgis_default_value(), NO_MASK = qgisprocess:::qgis_default_value(), MASK_LAYER = qgisprocess:::qgis_default_value(), OPTIONS = qgisprocess:::qgis_default_value(), EXTRA = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("gdal:fillnodata")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("gdal:fillnodata", `INPUT` = INPUT, `BAND` = BAND, `DISTANCE` = DISTANCE, `ITERATIONS` = ITERATIONS, `NO_MASK` = NO_MASK, `MASK_LAYER` = MASK_LAYER, `OPTIONS` = OPTIONS, `EXTRA` = EXTRA, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("gdal:fillnodata", `INPUT` = INPUT, `BAND` = BAND, `DISTANCE` = DISTANCE, `ITERATIONS` = ITERATIONS, `NO_MASK` = NO_MASK, `MASK_LAYER` = MASK_LAYER, `OPTIONS` = OPTIONS, `EXTRA` = EXTRA, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}