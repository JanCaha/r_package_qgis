##' QGIS Algorithm provided by GDAL Proximity (raster distance) (gdal:proximity)
##'
##' @title QGIS algorithm Proximity (raster distance)
##'
##' @param INPUT `raster` - Input layer. Path to a raster layer.
##' @param BAND `band` - Band number. Integer value representing an existing raster band number.
##' @param VALUES `string` - A list of pixel values in the source image to be considered target pixels. String value.
##' @param UNITS `enum`  of `("Georeferenced coordinates", "Pixel coordinates")` - Distance units. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param MAX_DISTANCE `number` - The maximum distance to be generated. A numeric value.
##' @param REPLACE `number` - Value to be applied to all pixels that are within the -maxdist of target pixels. A numeric value.
##' @param NODATA `number` - Nodata value to use for the destination proximity raster. A numeric value.
##' @param OPTIONS `string` - Additional creation options. String value.
##' @param EXTRA `string` - Additional command-line parameters. String value.
##' @param DATA_TYPE `enum`  of `("Byte", "Int16", "UInt16", "UInt32", "Int32", "Float32", "Float64", "CInt16", "CInt32", "CFloat32", "CFloat64")` - Output data type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param OUTPUT `rasterDestination` - Proximity map. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Proximity map
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

gdal_proximity <- function(INPUT = qgisprocess:::qgis_default_value(), BAND = qgisprocess:::qgis_default_value(), VALUES = qgisprocess:::qgis_default_value(), UNITS = qgisprocess:::qgis_default_value(), MAX_DISTANCE = qgisprocess:::qgis_default_value(), REPLACE = qgisprocess:::qgis_default_value(), NODATA = qgisprocess:::qgis_default_value(), OPTIONS = qgisprocess:::qgis_default_value(), EXTRA = qgisprocess:::qgis_default_value(), DATA_TYPE = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("gdal:proximity")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("gdal:proximity", `INPUT` = INPUT, `BAND` = BAND, `VALUES` = VALUES, `UNITS` = UNITS, `MAX_DISTANCE` = MAX_DISTANCE, `REPLACE` = REPLACE, `NODATA` = NODATA, `OPTIONS` = OPTIONS, `EXTRA` = EXTRA, `DATA_TYPE` = DATA_TYPE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("gdal:proximity", `INPUT` = INPUT, `BAND` = BAND, `VALUES` = VALUES, `UNITS` = UNITS, `MAX_DISTANCE` = MAX_DISTANCE, `REPLACE` = REPLACE, `NODATA` = NODATA, `OPTIONS` = OPTIONS, `EXTRA` = EXTRA, `DATA_TYPE` = DATA_TYPE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}