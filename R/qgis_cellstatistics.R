##' QGIS Algorithm provided by QGIS (native c++) Cell statistics (native:cellstatistics). Generates a raster whose cell values are computed from overlaid cell values of the input rasters. The Cell statistics algorithm computes a value for each cell of the output raster. At each cell location, the output value is defined as a function of all overlaid cell values of the input rasters.  The output raster's extent and resolution is defined by a reference raster. The following functions can be applied on the input raster cells per output raster cell location: ul    liSum/li   liCount/li   liMean/li   liMedian/li   liStandard deviation/li   liVariance/li   liMinimum/li   liMaximum/li   liMinority (least frequent value)/li   liMajority (most frequent value)/li   liRange (max-min)/li   liVariety (count of unique values)/li/ul Input raster layers that do not match the cell size of the reference raster layer will be resampled using nearest neighbor resampling. The output raster data type will be set to the most complex data type present in the input datasets except when using the functions Mean, Standard deviation and Variance (data type is always Float32/Float64 depending on input float type) or Count and Variety (data type is always Int32). iCalculation details - general:/i NoData values in any of the input layers will result in a NoData cell output if the Ignore NoData parameter is not set. iCalculation details - Count:/i Count will always result in the number of cells without NoData values at the current cell location. iCalculation details - Median:/i If the number of input layers is even, the median will be calculated as the arithmetic mean of the two middle values of the ordered cell input values. In this case the output data type is Float32. iCalculation details - Minority/Majority:/i If no unique minority or majority could be found, the result is NoData, except all input cell values are equal.
##'
##' @title QGIS algorithm - Cell statistics
##'
##' @param INPUT `multilayer` - Input layers. .
##' @param STATISTIC `enum`  of `("Sum", "Count", "Mean", "Median", "Standard deviation", "Variance", "Minimum", "Maximum", "Minority", "Majority", "Range", "Variety")` - Statistic. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param IGNORE_NODATA `boolean` - Ignore NoData values. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param REFERENCE_LAYER `raster` - Reference layer. Path to a raster layer.
##' @param OUTPUT_NODATA_VALUE `number` - Output NoData value. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param CREATION_OPTIONS `string` - Creation options. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
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

qgis_cellstatistics <- function(INPUT = qgisprocess:::qgis_default_value(), STATISTIC = qgisprocess:::qgis_default_value(), IGNORE_NODATA = qgisprocess:::qgis_default_value(), REFERENCE_LAYER = qgisprocess:::qgis_default_value(), OUTPUT_NODATA_VALUE = qgisprocess:::qgis_default_value(), CREATION_OPTIONS = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:cellstatistics")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:cellstatistics", `INPUT` = INPUT, `STATISTIC` = STATISTIC, `IGNORE_NODATA` = IGNORE_NODATA, `REFERENCE_LAYER` = REFERENCE_LAYER, `OUTPUT_NODATA_VALUE` = OUTPUT_NODATA_VALUE, `CREATION_OPTIONS` = CREATION_OPTIONS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:cellstatistics", `INPUT` = INPUT, `STATISTIC` = STATISTIC, `IGNORE_NODATA` = IGNORE_NODATA, `REFERENCE_LAYER` = REFERENCE_LAYER, `OUTPUT_NODATA_VALUE` = OUTPUT_NODATA_VALUE, `CREATION_OPTIONS` = CREATION_OPTIONS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "CRS_AUTHID")
  }
}