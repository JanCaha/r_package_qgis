##' QGIS Algorithm provided by GDAL Sieve (gdal:sieve). ---------------- Arguments ----------------  INPUT: Input layer 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer THRESHOLD: Threshold 	Default value:	10 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression EIGHT_CONNECTEDNESS: Use 8-connectedness 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression NO_MASK: Do not use the default validity mask for the input band 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression MASK_LAYER: Validity mask (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer EXTRA: Additional command-line parameters (optional) 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression OUTPUT: Sieved 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer
##'
##' @title QGIS algorithm - Sieve
##'
##' @param INPUT `raster` - Input layer. Path to a raster layer.
##' @param THRESHOLD `number` - Threshold. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param EIGHT_CONNECTEDNESS `boolean` - Use 8-connectedness. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param NO_MASK `boolean` - Do not use the default validity mask for the input band. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param MASK_LAYER `raster` - Validity mask. Path to a raster layer.
##' @param EXTRA `string` - Additional command-line parameters. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `rasterDestination` - Sieved. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Sieved
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

gdal_sieve <- function(INPUT = qgisprocess:::qgis_default_value(), THRESHOLD = qgisprocess:::qgis_default_value(), EIGHT_CONNECTEDNESS = qgisprocess:::qgis_default_value(), NO_MASK = qgisprocess:::qgis_default_value(), MASK_LAYER = qgisprocess:::qgis_default_value(), EXTRA = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("gdal:sieve")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("gdal:sieve", `INPUT` = INPUT, `THRESHOLD` = THRESHOLD, `EIGHT_CONNECTEDNESS` = EIGHT_CONNECTEDNESS, `NO_MASK` = NO_MASK, `MASK_LAYER` = MASK_LAYER, `EXTRA` = EXTRA, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("gdal:sieve", `INPUT` = INPUT, `THRESHOLD` = THRESHOLD, `EIGHT_CONNECTEDNESS` = EIGHT_CONNECTEDNESS, `NO_MASK` = NO_MASK, `MASK_LAYER` = MASK_LAYER, `EXTRA` = EXTRA, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}