##' QGIS Algorithm provided by GDAL Translate (convert format) (gdal:translate)
##'
##' @title QGIS algorithm Translate (convert format)
##'
##' @param INPUT `raster` - Input layer. Path to a raster layer.
##' @param TARGET_CRS `crs` - Override the projection for the output file. CRS as an auth ID (e.g. 'EPSG:3111'). CRS as a PROJ4 string (e.g. 'PROJ4:…'). CRS as a WKT string (e.g. 'WKT:…'). Path to a layer. The CRS of the layer is used..
##' @param NODATA `number` - Assign a specified nodata value to output bands. A numeric value.
##' @param COPY_SUBDATASETS `boolean` - Copy all subdatasets of this file to individual output files. 1 for true/yes. 0 for false/no.
##' @param OPTIONS `string` - Additional creation options. String value.
##' @param EXTRA `string` - Additional command-line parameters. String value.
##' @param DATA_TYPE `enum`  of `("Use Input Layer Data Type", "Byte", "Int16", "UInt16", "UInt32", "Int32", "Float32", "Float64", "CInt16", "CInt32", "CFloat32", "CFloat64")` - Output data type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param OUTPUT `rasterDestination` - Converted. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Converte
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

gdal_translate <- function(INPUT = qgisprocess::qgis_default_value(), TARGET_CRS = qgisprocess::qgis_default_value(), NODATA = qgisprocess::qgis_default_value(), COPY_SUBDATASETS = qgisprocess::qgis_default_value(), OPTIONS = qgisprocess::qgis_default_value(), EXTRA = qgisprocess::qgis_default_value(), DATA_TYPE = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("gdal:translate",`INPUT` = INPUT, `TARGET_CRS` = TARGET_CRS, `NODATA` = NODATA, `COPY_SUBDATASETS` = COPY_SUBDATASETS, `OPTIONS` = OPTIONS, `EXTRA` = EXTRA, `DATA_TYPE` = DATA_TYPE, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}