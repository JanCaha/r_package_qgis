##' QGIS Algorithm provided by QGIS (native c++) Cell stack percentile (native:cellstackpercentile). The Cell stack percentile algorithm returns the cell-wise percentile value of a stack of rasters and writes the results to an output raster. The percentile to return is determined by the percentile input value (ranges between 0 and 1). At each cell location, the specified percentile is obtained using the respective value from the stack of all overlaid and sorted cell values of the input rasters.  There are three methods for percentile calculation:ul    liNearest rank/li   liInclusive linear interpolation (PERCENTILE.INC)/li   liExclusive linear interpolation (PERCENTILE.EXC)/li/ul While the output value can stay the same for the nearest rank method (obtains the value that is nearest to the specified percentile), the linear interpolation method return unique values for different percentiles. Both interpolation methods follow their counterpart methods implemented by LibreOffice or Microsoft Excel.   The output raster's extent and resolution is defined by a reference raster. If the input raster layers that do not match the cell size of the reference raster layer will be resampled using nearest neighbor resampling. NoData values in any of the input layers will result in a NoData cell output if the Ignore NoData parameter is not set. The output raster data type will be set to the most complex data type present in the input datasets.
##'
##' @title QGIS algorithm - Cell stack percentile
##'
##' @param INPUT `multilayer` - Input layers. .
##' @param METHOD `enum`  of `("Nearest rank", "Inclusive linear interpolation (PERCENTILE.INC)", "Exclusive linear interpolation (PERCENTILE.EXC)")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param PERCENTILE `number` - Percentile. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param IGNORE_NODATA `boolean` - Ignore NoData values. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param REFERENCE_LAYER `raster` - Reference layer. Path to a raster layer.
##' @param OUTPUT_NODATA_VALUE `number` - Output NoData value. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param CREATE_OPTIONS `string` - Creation options. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
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

qgis_cellstackpercentile <- function(INPUT = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), PERCENTILE = qgisprocess:::qgis_default_value(), IGNORE_NODATA = qgisprocess:::qgis_default_value(), REFERENCE_LAYER = qgisprocess:::qgis_default_value(), OUTPUT_NODATA_VALUE = qgisprocess:::qgis_default_value(), CREATE_OPTIONS = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:cellstackpercentile")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:cellstackpercentile", `INPUT` = INPUT, `METHOD` = METHOD, `PERCENTILE` = PERCENTILE, `IGNORE_NODATA` = IGNORE_NODATA, `REFERENCE_LAYER` = REFERENCE_LAYER, `OUTPUT_NODATA_VALUE` = OUTPUT_NODATA_VALUE, `CREATE_OPTIONS` = CREATE_OPTIONS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:cellstackpercentile", `INPUT` = INPUT, `METHOD` = METHOD, `PERCENTILE` = PERCENTILE, `IGNORE_NODATA` = IGNORE_NODATA, `REFERENCE_LAYER` = REFERENCE_LAYER, `OUTPUT_NODATA_VALUE` = OUTPUT_NODATA_VALUE, `CREATE_OPTIONS` = CREATE_OPTIONS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "CRS_AUTHID")
  }
}