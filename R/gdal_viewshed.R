##' QGIS Algorithm provided by GDAL Viewshed (gdal:viewshed). ---------------- Arguments ----------------  INPUT: Input layer 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer BAND: Band number 	Default value:	1 	Argument type:	band 	Acceptable values: 		- Integer value representing an existing raster band number OBSERVER: Observer location 	Argument type:	point 	Acceptable values: 		- Point coordinate as an 'x,y' string, e.g. '1.5,10.1' OBSERVER_HEIGHT: Observer height, DEM units 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression TARGET_HEIGHT: Target height, DEM units 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression MAX_DISTANCE: Maximum distance from observer to compute visibility 	Default value:	100 	Argument type:	distance 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression OPTIONS: Additional creation options (optional) 	Default value:	 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression EXTRA: Additional command-line parameters (optional) 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression OUTPUT: Output 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer
##'
##' @title QGIS algorithm - Viewshed
##'
##' @param INPUT `raster` - Input layer. Path to a raster layer.
##' @param BAND `band` - Band number. Integer value representing an existing raster band number.
##' @param OBSERVER `point` - Observer location. Point coordinate as an 'x,y' string, e.g. '1.5,10.1'.
##' @param OBSERVER_HEIGHT `number` - Observer height, DEM units. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TARGET_HEIGHT `number` - Target height, DEM units. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param MAX_DISTANCE `distance` - Maximum distance from observer to compute visibility. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OPTIONS `string` - Additional creation options. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param EXTRA `string` - Additional command-line parameters. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `rasterDestination` - Output. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Output
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

gdal_viewshed <- function(INPUT = qgisprocess:::qgis_default_value(), BAND = qgisprocess:::qgis_default_value(), OBSERVER = qgisprocess:::qgis_default_value(), OBSERVER_HEIGHT = qgisprocess:::qgis_default_value(), TARGET_HEIGHT = qgisprocess:::qgis_default_value(), MAX_DISTANCE = qgisprocess:::qgis_default_value(), OPTIONS = qgisprocess:::qgis_default_value(), EXTRA = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("gdal:viewshed")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("gdal:viewshed", `INPUT` = INPUT, `BAND` = BAND, `OBSERVER` = OBSERVER, `OBSERVER_HEIGHT` = OBSERVER_HEIGHT, `TARGET_HEIGHT` = TARGET_HEIGHT, `MAX_DISTANCE` = MAX_DISTANCE, `OPTIONS` = OPTIONS, `EXTRA` = EXTRA, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("gdal:viewshed", `INPUT` = INPUT, `BAND` = BAND, `OBSERVER` = OBSERVER, `OBSERVER_HEIGHT` = OBSERVER_HEIGHT, `TARGET_HEIGHT` = TARGET_HEIGHT, `MAX_DISTANCE` = MAX_DISTANCE, `OPTIONS` = OPTIONS, `EXTRA` = EXTRA, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}