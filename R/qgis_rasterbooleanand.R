##' QGIS Algorithm provided by QGIS (native c++) Raster boolean AND (native:rasterbooleanand). Calculates the boolean AND for a set of input raster layers. This algorithm calculates the boolean AND for a set of input rasters. If all of the input rasters have a non-zero value for a pixel, that pixel will be set to 1 in the output raster. If any of the input rasters have 0 values for the pixel it will be set to 0 in the output raster.  The reference layer parameter specifies an existing raster layer to use as a reference when creating the output raster. The output raster will have the same extent, CRS, and pixel dimensions as this layer.  By default, a NoData pixel in ANY of the input layers will result in a NoData pixel in the output raster. If the 'Treat NoData values as false' option is checked, then NoData inputs will be treated the same as a 0 input value.
##'
##' @title QGIS algorithm - Raster boolean AND
##'
##' @param INPUT `multilayer` - Input layers. .
##' @param REF_LAYER `raster` - Reference layer. Path to a raster layer.
##' @param NODATA_AS_FALSE `boolean` - Treat NoData values as false. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param NO_DATA `number` - Output NoData value. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DATA_TYPE `enum`  of `("Byte", "Int16", "UInt16", "Int32", "UInt32", "Float32", "Float64", "CInt16", "CInt32", "CFloat32", "CFloat64", "Int8")` - Output data type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
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
##' * FALSE_PIXEL_COUNT - outputNumber - False pixel count
##' * HEIGHT_IN_PIXELS - outputNumber - Height in pixels
##' * NODATA_PIXEL_COUNT - outputNumber - NoData pixel count
##' * OUTPUT - outputRaster - Output layer
##' * TOTAL_PIXEL_COUNT - outputNumber - Total pixel count
##' * TRUE_PIXEL_COUNT - outputNumber - True pixel count
##' * WIDTH_IN_PIXELS - outputNumber - Width in pixels
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_rasterbooleanand <- function(INPUT = qgisprocess:::qgis_default_value(), REF_LAYER = qgisprocess:::qgis_default_value(), NODATA_AS_FALSE = qgisprocess:::qgis_default_value(), NO_DATA = qgisprocess:::qgis_default_value(), DATA_TYPE = qgisprocess:::qgis_default_value(), CREATION_OPTIONS = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:rasterbooleanand")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:rasterbooleanand", `INPUT` = INPUT, `REF_LAYER` = REF_LAYER, `NODATA_AS_FALSE` = NODATA_AS_FALSE, `NO_DATA` = NO_DATA, `DATA_TYPE` = DATA_TYPE, `CREATION_OPTIONS` = CREATION_OPTIONS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:rasterbooleanand", `INPUT` = INPUT, `REF_LAYER` = REF_LAYER, `NODATA_AS_FALSE` = NODATA_AS_FALSE, `NO_DATA` = NO_DATA, `DATA_TYPE` = DATA_TYPE, `CREATION_OPTIONS` = CREATION_OPTIONS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "CRS_AUTHID")
  }
}