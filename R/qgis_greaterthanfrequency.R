##' QGIS Algorithm provided by QGIS (native c++) Greater than frequency (native:greaterthanfrequency). The Greater than frequency algorithm evaluates on a cell-by-cell basis the frequency (number of times) the values of an input stack of rasters are greater than the value of a value raster.   If multiband rasters are used in the data raster stack, the algorithm will always perform the analysis on the first band of the rasters - use GDAL to use other bands in the analysis. The input value layer serves as reference layer for the sample layers. Any NoData cells in the value raster or the data layer stack will result in a NoData cell in the output raster if the ignore NoData parameter is not checked. The output NoData value can be set manually. The output rasters extent and resolution is defined by the input raster layer and is always of int32 type.
##'
##' @title QGIS algorithm - Greater than frequency
##'
##' @param INPUT_VALUE_RASTER `raster` - Input value raster. Path to a raster layer.
##' @param INPUT_VALUE_RASTER_BAND `band` - Value raster band. Integer value representing an existing raster band number.
##' @param INPUT_RASTERS `multilayer` - Input raster layers. .
##' @param IGNORE_NODATA `boolean` - Ignore NoData values. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
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
##' * FOUND_LOCATIONS_COUNT - outputNumber - Count of cells with equal value occurrences
##' * HEIGHT_IN_PIXELS - outputNumber - Height in pixels
##' * MEAN_FREQUENCY_PER_LOCATION - outputNumber - Mean frequency at valid cell locations
##' * OCCURRENCE_COUNT - outputNumber - Count of value occurrences
##' * OUTPUT - outputRaster - Output layer
##' * TOTAL_PIXEL_COUNT - outputNumber - Total pixel count
##' * WIDTH_IN_PIXELS - outputNumber - Width in pixels
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_greaterthanfrequency <- function(INPUT_VALUE_RASTER = qgisprocess:::qgis_default_value(), INPUT_VALUE_RASTER_BAND = qgisprocess:::qgis_default_value(), INPUT_RASTERS = qgisprocess:::qgis_default_value(), IGNORE_NODATA = qgisprocess:::qgis_default_value(), OUTPUT_NODATA_VALUE = qgisprocess:::qgis_default_value(), CREATE_OPTIONS = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:greaterthanfrequency")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:greaterthanfrequency", `INPUT_VALUE_RASTER` = INPUT_VALUE_RASTER, `INPUT_VALUE_RASTER_BAND` = INPUT_VALUE_RASTER_BAND, `INPUT_RASTERS` = INPUT_RASTERS, `IGNORE_NODATA` = IGNORE_NODATA, `OUTPUT_NODATA_VALUE` = OUTPUT_NODATA_VALUE, `CREATE_OPTIONS` = CREATE_OPTIONS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:greaterthanfrequency", `INPUT_VALUE_RASTER` = INPUT_VALUE_RASTER, `INPUT_VALUE_RASTER_BAND` = INPUT_VALUE_RASTER_BAND, `INPUT_RASTERS` = INPUT_RASTERS, `IGNORE_NODATA` = IGNORE_NODATA, `OUTPUT_NODATA_VALUE` = OUTPUT_NODATA_VALUE, `CREATE_OPTIONS` = CREATE_OPTIONS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "CRS_AUTHID")
  }
}