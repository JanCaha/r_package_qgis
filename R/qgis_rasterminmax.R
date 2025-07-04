##' QGIS Algorithm provided by QGIS (native c++) Raster minimum/maximum (native:rasterminmax). Calculates the minimum and maximum pixel in a raster layer. This algorithm extracts extrema (minimum and maximum) values from a given band of the raster layer.  The output is a vector layer containing point features for the selected extrema, at the center of the associated pixel.  If multiple pixels in the raster share the minimum or maximum value, then only one of these pixels will be included in the output.
##'
##' @title QGIS algorithm - Raster minimum/maximum
##'
##' @param INPUT `raster` - Input layer. Path to a raster layer.
##' @param BAND `band` - Band number. Integer value representing an existing raster band number.
##' @param EXTRACT `enum`  of `("Minimum and Maximum", "Minimum", "Maximum")` - Extract extrema. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param OUTPUT `sink` - Output. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * MAXIMUM - outputNumber - Maximum
##' * MINIMUM - outputNumber - Minimum
##' * OUTPUT - outputVector - Output
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_rasterminmax <- function(INPUT = qgisprocess:::qgis_default_value(), BAND = qgisprocess:::qgis_default_value(), EXTRACT = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:rasterminmax")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:rasterminmax", `INPUT` = INPUT, `BAND` = BAND, `EXTRACT` = EXTRACT, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:rasterminmax", `INPUT` = INPUT, `BAND` = BAND, `EXTRACT` = EXTRACT, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "MAXIMUM")
  }
}