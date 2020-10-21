##' QGIS Algorithm provided by GDAL Warp (reproject) (gdal:warpreproject)
##'
##' @title QGIS algorithm Warp (reproject)
##'
##' @param INPUT `raster` - Input layer. Path to a raster layer.
##' @param SOURCE_CRS `crs` - Source CRS. CRS as an auth ID (e.g. 'EPSG:3111'). CRS as a PROJ4 string (e.g. 'PROJ4:…'). CRS as a WKT string (e.g. 'WKT:…'). Path to a layer. The CRS of the layer is used..
##' @param TARGET_CRS `crs` - Target CRS. CRS as an auth ID (e.g. 'EPSG:3111'). CRS as a PROJ4 string (e.g. 'PROJ4:…'). CRS as a WKT string (e.g. 'WKT:…'). Path to a layer. The CRS of the layer is used..
##' @param RESAMPLING `enum`  of `("Nearest Neighbour", "Bilinear", "Cubic", "Cubic Spline", "Lanczos Windowed Sinc", "Average", "Mode", "Maximum", "Minimum", "Median", "First Quartile", "Third Quartile")` - Resampling method to use. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param NODATA `number` - Nodata value for output bands. A numeric value.
##' @param TARGET_RESOLUTION `number` - Output file resolution in target georeferenced units. A numeric value.
##' @param OPTIONS `string` - Additional creation options. String value.
##' @param DATA_TYPE `enum`  of `("Use Input Layer Data Type", "Byte", "Int16", "UInt16", "UInt32", "Int32", "Float32", "Float64", "CInt16", "CInt32", "CFloat32", "CFloat64")` - Output data type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param TARGET_EXTENT `extent` - Georeferenced extents of output file to be created. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param TARGET_EXTENT_CRS `crs` - CRS of the target raster extent. CRS as an auth ID (e.g. 'EPSG:3111'). CRS as a PROJ4 string (e.g. 'PROJ4:…'). CRS as a WKT string (e.g. 'WKT:…'). Path to a layer. The CRS of the layer is used..
##' @param MULTITHREADING `boolean` - Use multithreaded warping implementation. 1 for true/yes. 0 for false/no.
##' @param EXTRA `string` - Additional command-line parameters. String value.
##' @param OUTPUT `rasterDestination` - Reprojected. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Reprojected
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

gdal_warpreproject <- function(INPUT = qgisprocess::qgis_default_value(), SOURCE_CRS = qgisprocess::qgis_default_value(), TARGET_CRS = qgisprocess::qgis_default_value(), RESAMPLING = qgisprocess::qgis_default_value(), NODATA = qgisprocess::qgis_default_value(), TARGET_RESOLUTION = qgisprocess::qgis_default_value(), OPTIONS = qgisprocess::qgis_default_value(), DATA_TYPE = qgisprocess::qgis_default_value(), TARGET_EXTENT = qgisprocess::qgis_default_value(), TARGET_EXTENT_CRS = qgisprocess::qgis_default_value(), MULTITHREADING = qgisprocess::qgis_default_value(), EXTRA = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("gdal:warpreproject",`INPUT` = INPUT, `SOURCE_CRS` = SOURCE_CRS, `TARGET_CRS` = TARGET_CRS, `RESAMPLING` = RESAMPLING, `NODATA` = NODATA, `TARGET_RESOLUTION` = TARGET_RESOLUTION, `OPTIONS` = OPTIONS, `DATA_TYPE` = DATA_TYPE, `TARGET_EXTENT` = TARGET_EXTENT, `TARGET_EXTENT_CRS` = TARGET_EXTENT_CRS, `MULTITHREADING` = MULTITHREADING, `EXTRA` = EXTRA, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}