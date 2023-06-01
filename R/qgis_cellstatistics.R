##' QGIS Algorithm provided by QGIS (native c++) Cell statistics (native:cellstatistics)
##'
##' @title QGIS algorithm Cell statistics
##'
##' @param INPUT `multilayer` - Input layers. .
##' @param STATISTIC `enum`  of `("Sum", "Count", "Mean", "Median", "Standard deviation", "Variance", "Minimum", "Maximum", "Minority", "Majority", "Range", "Variety")` - Statistic. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param IGNORE_NODATA `boolean` - Ignore NoData values. 1 for true/yes. 0 for false/no.
##' @param REFERENCE_LAYER `raster` - Reference layer. Path to a raster layer.
##' @param OUTPUT_NODATA_VALUE `number` - Output NoData value. A numeric value.
##' @param OUTPUT `rasterDestination` - Output layer. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * CRS_AUTHID - outputString - CRS authority identifier
##' * EXTENT - outputString - Extent
##' * HEIGHT_IN_PIXELS - outputNumber - Height in pixels
##' * OUTPUT - outputRaster - Output layer
##' * TOTAL_PIXEL_COUNT - outputNumber - Total pixel count
##' * WIDTH_IN_PIXELS - outputNumber - Width in pixels
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_cellstatistics <- function(INPUT = qgisprocess:::qgis_default_value(), STATISTIC = qgisprocess:::qgis_default_value(), IGNORE_NODATA = qgisprocess:::qgis_default_value(), REFERENCE_LAYER = qgisprocess:::qgis_default_value(), OUTPUT_NODATA_VALUE = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:cellstatistics")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:cellstatistics", `INPUT` = INPUT, `STATISTIC` = STATISTIC, `IGNORE_NODATA` = IGNORE_NODATA, `REFERENCE_LAYER` = REFERENCE_LAYER, `OUTPUT_NODATA_VALUE` = OUTPUT_NODATA_VALUE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:cellstatistics", `INPUT` = INPUT, `STATISTIC` = STATISTIC, `IGNORE_NODATA` = IGNORE_NODATA, `REFERENCE_LAYER` = REFERENCE_LAYER, `OUTPUT_NODATA_VALUE` = OUTPUT_NODATA_VALUE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "CRS_AUTHID")
  }
}