##' QGIS Algorithm provided by QGIS (native c++) Highest position in raster stack (native:highestpositioninrasterstack). The highest position algorithm evaluates on a cell-by-cell basis the position of the raster with the highest value in a stack of rasters. Position counts start with 1 and range to the total number of input rasters. The order of the input rasters is relevant for the algorithm. If multiple rasters feature the highest value, the first raster will be used for the position value.  If multiband rasters are used in the data raster stack, the algorithm will always perform the analysis on the first band of the rasters - use GDAL to use other bands in the analysis. Any NoData cells in the raster layer stack will result in a NoData cell in the output raster unless the "ignore NoData" parameter is checked. The output NoData value can be set manually. The output rasters extent and resolution is defined by a reference raster layer and is always of int32 type.
##'
##' @title QGIS algorithm - Highest position in raster stack
##'
##' @param INPUT_RASTERS `multilayer` - Input raster layers. .
##' @param REFERENCE_LAYER `raster` - Reference layer. Path to a raster layer.
##' @param IGNORE_NODATA `boolean` - Ignore NoData values. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT_NODATA_VALUE `number` - Output NoData value. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
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

qgis_highestpositioninrasterstack <- function(INPUT_RASTERS = qgisprocess:::qgis_default_value(), REFERENCE_LAYER = qgisprocess:::qgis_default_value(), IGNORE_NODATA = qgisprocess:::qgis_default_value(), OUTPUT_NODATA_VALUE = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:highestpositioninrasterstack")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:highestpositioninrasterstack", `INPUT_RASTERS` = INPUT_RASTERS, `REFERENCE_LAYER` = REFERENCE_LAYER, `IGNORE_NODATA` = IGNORE_NODATA, `OUTPUT_NODATA_VALUE` = OUTPUT_NODATA_VALUE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:highestpositioninrasterstack", `INPUT_RASTERS` = INPUT_RASTERS, `REFERENCE_LAYER` = REFERENCE_LAYER, `IGNORE_NODATA` = IGNORE_NODATA, `OUTPUT_NODATA_VALUE` = OUTPUT_NODATA_VALUE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "CRS_AUTHID")
  }
}