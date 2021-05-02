##' QGIS Algorithm provided by QGIS (native c++) Less than frequency (native:lessthanfrequency)
##'
##' @title QGIS algorithm Less than frequency
##'
##' @param INPUT_VALUE_RASTER `raster` - Input value raster. Path to a raster layer.
##' @param INPUT_VALUE_RASTER_BAND `band` - Value raster band. Integer value representing an existing raster band number.
##' @param INPUT_RASTERS `multilayer` - Input raster layers. .
##' @param IGNORE_NODATA `boolean` - Ignore NoData values. 1 for true/yes. 0 for false/no.
##' @param OUTPUT_NODATA_VALUE `number` - Output NoData value. A numeric value.
##' @param OUTPUT `rasterDestination` - Output layer. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Output layer
##' * OCCURRENCE_COUNT - outputNumber - Count of value occurrences
##' * FOUND_LOCATIONS_COUNT - outputNumber - Count of cells with equal value occurrences
##' * MEAN_FREQUENCY_PER_LOCATION - outputNumber - Mean frequency at valid cell locations
##' * EXTENT - outputString - Extent
##' * CRS_AUTHID - outputString - CRS authority identifier
##' * WIDTH_IN_PIXELS - outputNumber - Width in pixels
##' * HEIGHT_IN_PIXELS - outputNumber - Height in pixels
##' * TOTAL_PIXEL_COUNT - outputNumber - Total pixel count
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_lessthanfrequency <- function(INPUT_VALUE_RASTER = qgisprocess::qgis_default_value(), INPUT_VALUE_RASTER_BAND = qgisprocess::qgis_default_value(), INPUT_RASTERS = qgisprocess::qgis_default_value(), IGNORE_NODATA = qgisprocess::qgis_default_value(), OUTPUT_NODATA_VALUE = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("native:lessthanfrequency")
  output <- qgisprocess::qgis_run_algorithm("native:lessthanfrequency",`INPUT_VALUE_RASTER` = INPUT_VALUE_RASTER, `INPUT_VALUE_RASTER_BAND` = INPUT_VALUE_RASTER_BAND, `INPUT_RASTERS` = INPUT_RASTERS, `IGNORE_NODATA` = IGNORE_NODATA, `OUTPUT_NODATA_VALUE` = OUTPUT_NODATA_VALUE, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}