##' QGIS Algorithm provided by GDAL Vector information (gdal:ogrinfo). ---------------- Arguments ----------------  INPUT: Input layer 	Argument type:	vector 	Acceptable values: 		- Path to a vector layer SUMMARY_ONLY: Summary output only 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression NO_METADATA: Suppress metadata info 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression OUTPUT: Layer information 	Argument type:	fileDestination 	Acceptable values: 		- Path for new file
##'
##' @title QGIS algorithm - Vector information
##'
##' @param INPUT `vector` - Input layer. Path to a vector layer.
##' @param SUMMARY_ONLY `boolean` - Summary output only. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param NO_METADATA `boolean` - Suppress metadata info. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `fileDestination` - Layer information. Path for new file.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputHtml - Layer information
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

gdal_ogrinfo <- function(INPUT = qgisprocess:::qgis_default_value(), SUMMARY_ONLY = qgisprocess:::qgis_default_value(), NO_METADATA = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("gdal:ogrinfo")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("gdal:ogrinfo", `INPUT` = INPUT, `SUMMARY_ONLY` = SUMMARY_ONLY, `NO_METADATA` = NO_METADATA, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("gdal:ogrinfo", `INPUT` = INPUT, `SUMMARY_ONLY` = SUMMARY_ONLY, `NO_METADATA` = NO_METADATA, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}