##' QGIS Algorithm provided by QGIS (native c++) Raster boolean AND (native:rasterbooleanand)
##'
##' @title QGIS algorithm Raster boolean AND
##'
##' @param INPUT `multilayer` - Input layers. .
##' @param REF_LAYER `raster` - Reference layer. Path to a raster layer.
##' @param NODATA_AS_FALSE `boolean` - Treat nodata values as false. 1 for true/yes. 0 for false/no.
##' @param NO_DATA `number` - Output no data value. A numeric value.
##' @param DATA_TYPE `enum`  of `("Byte", "Int16", "UInt16", "Int32", "UInt32", "Float32", "Float64", "CInt16", "CInt32", "CFloat32", "CFloat64")` - Output data type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
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
##' * NODATA_PIXEL_COUNT - outputNumber - NODATA pixel count
##' * TRUE_PIXEL_COUNT - outputNumber - True pixel count
##' * FALSE_PIXEL_COUNT - outputNumber - False pixel count
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_rasterbooleanand <- function(INPUT = qgisprocess::qgis_default_value(), REF_LAYER = qgisprocess::qgis_default_value(), NODATA_AS_FALSE = qgisprocess::qgis_default_value(), NO_DATA = qgisprocess::qgis_default_value(), DATA_TYPE = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("native:rasterbooleanand",`INPUT` = INPUT, `REF_LAYER` = REF_LAYER, `NODATA_AS_FALSE` = NODATA_AS_FALSE, `NO_DATA` = NO_DATA, `DATA_TYPE` = DATA_TYPE, `OUTPUT` = OUTPUT,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
}
}