##' QGIS Algorithm provided by QGIS (native c++) Cell stack percentrank from raster layer (native:cellstackpercentrankfromrasterlayer). Generates a raster containing the cell-wise percent rank value of a stack of input rasters based on an input value raster. This algorithm generates a raster containing the cell-wise percent rank value of a stack of input rasters based on an input value raster.  At each cell location, the current value of the value raster is used ranked among the respective values in the stack of all overlaid and sorted cell values of the input rasters. For values outside of the the stack value distribution, the algorithm returns NoData because the value cannot be ranked among the cell values.  There are two methods for percentile calculation:ul    liInclusive linearly interpolated percent rank (PERCENTRANK.INC)/li   liExclusive linearly interpolated percent rank (PERCENTRANK.EXC)/li/ul The linear interpolation method return the unique percent rank for different values. Both interpolation methods follow their counterpart methods implemented by LibreOffice or Microsoft Excel.   The output raster's extent and resolution is defined by a reference raster. If the input raster layers that do not match the cell size of the reference raster layer will be resampled using nearest neighbor resampling.  NoData values in any of the input layers will result in a NoData cell output if the Ignore NoData parameter is not set. The output raster data type will always be Float32.
##'
##' @title QGIS algorithm - Cell stack percentrank from raster layer
##'
##' @param INPUT `multilayer` - Input layers. .
##' @param INPUT_VALUE_RASTER `raster` - Value raster layer. Path to a raster layer.
##' @param VALUE_RASTER_BAND `band` - Value raster band. Integer value representing an existing raster band number.
##' @param METHOD `enum`  of `("Inclusive linear interpolation (PERCENTRANK.INC)", "Exclusive linear interpolation (PERCENTRANK.EXC)")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
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

qgis_cellstackpercentrankfromrasterlayer <- function(INPUT = qgisprocess:::qgis_default_value(), INPUT_VALUE_RASTER = qgisprocess:::qgis_default_value(), VALUE_RASTER_BAND = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), IGNORE_NODATA = qgisprocess:::qgis_default_value(), REFERENCE_LAYER = qgisprocess:::qgis_default_value(), OUTPUT_NODATA_VALUE = qgisprocess:::qgis_default_value(), CREATION_OPTIONS = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:cellstackpercentrankfromrasterlayer")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:cellstackpercentrankfromrasterlayer", `INPUT` = INPUT, `INPUT_VALUE_RASTER` = INPUT_VALUE_RASTER, `VALUE_RASTER_BAND` = VALUE_RASTER_BAND, `METHOD` = METHOD, `IGNORE_NODATA` = IGNORE_NODATA, `REFERENCE_LAYER` = REFERENCE_LAYER, `OUTPUT_NODATA_VALUE` = OUTPUT_NODATA_VALUE, `CREATION_OPTIONS` = CREATION_OPTIONS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:cellstackpercentrankfromrasterlayer", `INPUT` = INPUT, `INPUT_VALUE_RASTER` = INPUT_VALUE_RASTER, `VALUE_RASTER_BAND` = VALUE_RASTER_BAND, `METHOD` = METHOD, `IGNORE_NODATA` = IGNORE_NODATA, `REFERENCE_LAYER` = REFERENCE_LAYER, `OUTPUT_NODATA_VALUE` = OUTPUT_NODATA_VALUE, `CREATION_OPTIONS` = CREATION_OPTIONS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "CRS_AUTHID")
  }
}