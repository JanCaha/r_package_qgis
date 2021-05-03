##' QGIS Algorithm provided by QGIS (native c++) Highest position in raster stack (native:highestpositioninrasterstack)
##'
##' @title QGIS algorithm Highest position in raster stack
##'
##' @param INPUT_RASTERS `multilayer` - Input raster layers. .
##' @param REFERENCE_LAYER `raster` - Reference layer. Path to a raster layer.
##' @param IGNORE_NODATA `boolean` - Ignore NoData values. 1 for true/yes. 0 for false/no.
##' @param OUTPUT_NODATA_VALUE `number` - Output NoData value. A numeric value.
##' @param OUTPUT `rasterDestination` - Output layer. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Output layer
##' * EXTENT - outputString - Extent
##' * CRS_AUTHID - outputString - CRS authority identifier
##' * WIDTH_IN_PIXELS - outputNumber - Width in pixels
##' * HEIGHT_IN_PIXELS - outputNumber - Height in pixels
##' * TOTAL_PIXEL_COUNT - outputNumber - Total pixel count
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_highestpositioninrasterstack <- function(INPUT_RASTERS = qgisprocess::qgis_default_value(), REFERENCE_LAYER = qgisprocess::qgis_default_value(), IGNORE_NODATA = qgisprocess::qgis_default_value(), OUTPUT_NODATA_VALUE = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("native:highestpositioninrasterstack")

  output <- qgisprocess::qgis_run_algorithm("native:highestpositioninrasterstack", `INPUT_RASTERS` = INPUT_RASTERS, `REFERENCE_LAYER` = REFERENCE_LAYER, `IGNORE_NODATA` = IGNORE_NODATA, `OUTPUT_NODATA_VALUE` = OUTPUT_NODATA_VALUE, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}