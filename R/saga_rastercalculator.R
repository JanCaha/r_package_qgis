##' QGIS Algorithm provided by SAGA Raster calculator (saga:rastercalculator)
##'
##' @title QGIS algorithm Raster calculator
##'
##' @param GRIDS `raster` - Main input layer. Path to a raster layer.
##' @param XGRIDS `multilayer` - Additional layers. .
##' @param FORMULA `string` - Formula. String value.
##' @param RESAMPLING `enum`  of `("[0] Nearest Neighbour", "[1] Bilinear Interpolation", "[2] Bicubic Spline Interpolation", "[3] B-Spline Interpolation")` - Resampling Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param USE_NODATA `boolean` - Use NoData. 1 for true/yes. 0 for false/no.
##' @param TYPE `enum`  of `("[0] bit", "[1] unsigned 1 byte integer", "[2] signed 1 byte integer", "[3] unsigned 2 byte integer", "[4] signed 2 byte integer", "[5] unsigned 4 byte integer", "[6] signed 4 byte integer", "[7] 4 byte floating point number", "[8] 8 byte floating point number")` - Output Data Type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param RESULT `rasterDestination` - Calculated. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputRaster - Calculated
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

saga_rastercalculator <- function(GRIDS = qgisprocess:::qgis_default_value(), XGRIDS = qgisprocess:::qgis_default_value(), FORMULA = qgisprocess:::qgis_default_value(), RESAMPLING = qgisprocess:::qgis_default_value(), USE_NODATA = qgisprocess:::qgis_default_value(), TYPE = qgisprocess:::qgis_default_value(), RESULT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:rastercalculator")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:rastercalculator", `GRIDS` = GRIDS, `XGRIDS` = XGRIDS, `FORMULA` = FORMULA, `RESAMPLING` = RESAMPLING, `USE_NODATA` = USE_NODATA, `TYPE` = TYPE, `RESULT` = RESULT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:rastercalculator", `GRIDS` = GRIDS, `XGRIDS` = XGRIDS, `FORMULA` = FORMULA, `RESAMPLING` = RESAMPLING, `USE_NODATA` = USE_NODATA, `TYPE` = TYPE, `RESULT` = RESULT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "RESULT")
  }
}