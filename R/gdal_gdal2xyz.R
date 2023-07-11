##' QGIS Algorithm provided by GDAL gdal2xyz (gdal:gdal2xyz). ---------------- Arguments ----------------  INPUT: Input layer 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer BAND: Band number 	Default value:	1 	Argument type:	band 	Acceptable values: 		- Integer value representing an existing raster band number NODATA_INPUT: Input pixel value to treat as "nodata" (optional) 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression NODATA_OUTPUT: Assign specified "nodata" value to output (optional) 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SKIP_NODATA: Do not output nodata values 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression CSV: Output comma-separated values 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression OUTPUT: XYZ ASCII file 	Argument type:	fileDestination 	Acceptable values: 		- Path for new file
##'
##' @title QGIS algorithm - gdal2xyz
##'
##' @param INPUT `raster` - Input layer. Path to a raster layer.
##' @param BAND `band` - Band number. Integer value representing an existing raster band number.
##' @param NODATA_INPUT `number` - Input pixel value to treat as "nodata". A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param NODATA_OUTPUT `number` - Assign specified "nodata" value to output. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SKIP_NODATA `boolean` - Do not output nodata values. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param CSV `boolean` - Output comma-separated values. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `fileDestination` - XYZ ASCII file. Path for new file.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputFile - XYZ ASCII file
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

gdal_gdal2xyz <- function(INPUT = qgisprocess:::qgis_default_value(), BAND = qgisprocess:::qgis_default_value(), NODATA_INPUT = qgisprocess:::qgis_default_value(), NODATA_OUTPUT = qgisprocess:::qgis_default_value(), SKIP_NODATA = qgisprocess:::qgis_default_value(), CSV = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("gdal:gdal2xyz")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("gdal:gdal2xyz", `INPUT` = INPUT, `BAND` = BAND, `NODATA_INPUT` = NODATA_INPUT, `NODATA_OUTPUT` = NODATA_OUTPUT, `SKIP_NODATA` = SKIP_NODATA, `CSV` = CSV, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("gdal:gdal2xyz", `INPUT` = INPUT, `BAND` = BAND, `NODATA_INPUT` = NODATA_INPUT, `NODATA_OUTPUT` = NODATA_OUTPUT, `SKIP_NODATA` = SKIP_NODATA, `CSV` = CSV, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}