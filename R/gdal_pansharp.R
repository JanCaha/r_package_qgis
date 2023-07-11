##' QGIS Algorithm provided by GDAL Pansharpening (gdal:pansharp). ---------------- Arguments ----------------  SPECTRAL: Spectral dataset 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer PANCHROMATIC: Panchromatic dataset 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer RESAMPLING: Resampling algorithm 	Default value:	2 	Argument type:	enum 	Available values: 		- 0: Nearest Neighbour 		- 1: Bilinear 		- 2: Cubic 		- 3: Cubic Spline 		- 4: Lanczos Windowed Sinc 		- 5: Average 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' OPTIONS: Additional creation options (optional) 	Default value:	 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression EXTRA: Additional command-line parameters (optional) 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression OUTPUT: Output 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer
##'
##' @title QGIS algorithm - Pansharpening
##'
##' @param SPECTRAL `raster` - Spectral dataset. Path to a raster layer.
##' @param PANCHROMATIC `raster` - Panchromatic dataset. Path to a raster layer.
##' @param RESAMPLING `enum`  of `("Nearest Neighbour", "Bilinear", "Cubic", "Cubic Spline", "Lanczos Windowed Sinc", "Average")` - Resampling algorithm. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
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

gdal_pansharp <- function(SPECTRAL = qgisprocess:::qgis_default_value(), PANCHROMATIC = qgisprocess:::qgis_default_value(), RESAMPLING = qgisprocess:::qgis_default_value(), OPTIONS = qgisprocess:::qgis_default_value(), EXTRA = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("gdal:pansharp")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("gdal:pansharp", `SPECTRAL` = SPECTRAL, `PANCHROMATIC` = PANCHROMATIC, `RESAMPLING` = RESAMPLING, `OPTIONS` = OPTIONS, `EXTRA` = EXTRA, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("gdal:pansharp", `SPECTRAL` = SPECTRAL, `PANCHROMATIC` = PANCHROMATIC, `RESAMPLING` = RESAMPLING, `OPTIONS` = OPTIONS, `EXTRA` = EXTRA, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}