##' QGIS Algorithm provided by GDAL Clip raster by mask layer (gdal:cliprasterbymasklayer)
##'
##' @title QGIS algorithm Clip raster by mask layer
##'
##' @param INPUT `raster` - Input layer. Path to a raster layer.
##' @param MASK `source` - Mask layer. Path to a vector layer.
##' @param SOURCE_CRS `crs` - Source CRS. CRS as an auth ID (e.g. 'EPSG:3111'). CRS as a PROJ4 string (e.g. 'PROJ4:…'). CRS as a WKT string (e.g. 'WKT:…'). Path to a layer. The CRS of the layer is used..
##' @param TARGET_CRS `crs` - Target CRS. CRS as an auth ID (e.g. 'EPSG:3111'). CRS as a PROJ4 string (e.g. 'PROJ4:…'). CRS as a WKT string (e.g. 'WKT:…'). Path to a layer. The CRS of the layer is used..
##' @param NODATA `number` - Assign a specified nodata value to output bands. A numeric value.
##' @param ALPHA_BAND `boolean` - Create an output alpha band. 1 for true/yes. 0 for false/no.
##' @param CROP_TO_CUTLINE `boolean` - Match the extent of the clipped raster to the extent of the mask layer. 1 for true/yes. 0 for false/no.
##' @param KEEP_RESOLUTION `boolean` - Keep resolution of input raster. 1 for true/yes. 0 for false/no.
##' @param SET_RESOLUTION `boolean` - Set output file resolution. 1 for true/yes. 0 for false/no.
##' @param X_RESOLUTION `number` - X Resolution to output bands. A numeric value.
##' @param Y_RESOLUTION `number` - Y Resolution to output bands. A numeric value.
##' @param MULTITHREADING `boolean` - Use multithreaded warping implementation. 1 for true/yes. 0 for false/no.
##' @param OPTIONS `string` - Additional creation options. String value.
##' @param DATA_TYPE `enum`  of `("Use Input Layer Data Type", "Byte", "Int16", "UInt16", "UInt32", "Int32", "Float32", "Float64", "CInt16", "CInt32", "CFloat32", "CFloat64")` - Output data type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param EXTRA `string` - Additional command-line parameters. String value.
##' @param OUTPUT `rasterDestination` - Clipped (mask). Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Clipped 
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

gdal_cliprasterbymasklayer <- function(INPUT = qgisprocess::qgis_default_value(), MASK = qgisprocess::qgis_default_value(), SOURCE_CRS = qgisprocess::qgis_default_value(), TARGET_CRS = qgisprocess::qgis_default_value(), NODATA = qgisprocess::qgis_default_value(), ALPHA_BAND = qgisprocess::qgis_default_value(), CROP_TO_CUTLINE = qgisprocess::qgis_default_value(), KEEP_RESOLUTION = qgisprocess::qgis_default_value(), SET_RESOLUTION = qgisprocess::qgis_default_value(), X_RESOLUTION = qgisprocess::qgis_default_value(), Y_RESOLUTION = qgisprocess::qgis_default_value(), MULTITHREADING = qgisprocess::qgis_default_value(), OPTIONS = qgisprocess::qgis_default_value(), DATA_TYPE = qgisprocess::qgis_default_value(), EXTRA = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("gdal:cliprasterbymasklayer")
  output <- qgisprocess::qgis_run_algorithm("gdal:cliprasterbymasklayer",`INPUT` = INPUT, `MASK` = MASK, `SOURCE_CRS` = SOURCE_CRS, `TARGET_CRS` = TARGET_CRS, `NODATA` = NODATA, `ALPHA_BAND` = ALPHA_BAND, `CROP_TO_CUTLINE` = CROP_TO_CUTLINE, `KEEP_RESOLUTION` = KEEP_RESOLUTION, `SET_RESOLUTION` = SET_RESOLUTION, `X_RESOLUTION` = X_RESOLUTION, `Y_RESOLUTION` = Y_RESOLUTION, `MULTITHREADING` = MULTITHREADING, `OPTIONS` = OPTIONS, `DATA_TYPE` = DATA_TYPE, `EXTRA` = EXTRA, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}