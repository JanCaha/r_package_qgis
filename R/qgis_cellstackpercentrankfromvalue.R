##' QGIS Algorithm provided by QGIS (native c++) Cell stack percent rank from value (native:cellstackpercentrankfromvalue)
##'
##' @title QGIS algorithm Cell stack percent rank from value
##'
##' @param INPUT `multilayer` - Input layers. .
##' @param METHOD `enum`  of `("Inclusive linear interpolation (PERCENTRANK.INC)", "Exclusive linear interpolation (PERCENTRANK.EXC)")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param VALUE `number` - Value. A numeric value.
##' @param IGNORE_NODATA `boolean` - Ignore NoData values. 1 for true/yes. 0 for false/no.
##' @param REFERENCE_LAYER `raster` - Reference layer. Path to a raster layer.
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

qgis_cellstackpercentrankfromvalue <- function(INPUT = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(), VALUE = qgisprocess::qgis_default_value(), IGNORE_NODATA = qgisprocess::qgis_default_value(), REFERENCE_LAYER = qgisprocess::qgis_default_value(), OUTPUT_NODATA_VALUE = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("native:cellstackpercentrankfromvalue")

  output <- qgisprocess::qgis_run_algorithm("native:cellstackpercentrankfromvalue", `INPUT` = INPUT, `METHOD` = METHOD, `VALUE` = VALUE, `IGNORE_NODATA` = IGNORE_NODATA, `REFERENCE_LAYER` = REFERENCE_LAYER, `OUTPUT_NODATA_VALUE` = OUTPUT_NODATA_VALUE, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}