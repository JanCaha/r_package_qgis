##' QGIS Algorithm provided by QGIS (native c++) Create random raster layer (poisson distribution) (native:createrandompoissonrasterlayer)
##'
##' @title QGIS algorithm Create random raster layer (poisson distribution)
##'
##' @param EXTENT `extent` - Desired extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param TARGET_CRS `crs` - Target CRS. CRS as an auth ID (e.g. 'EPSG:3111'). CRS as a PROJ4 string (e.g. 'PROJ4:…'). CRS as a WKT string (e.g. 'WKT:…'). Path to a layer. The CRS of the layer is used..
##' @param PIXEL_SIZE `number` - Pixel size. A numeric value.
##' @param OUTPUT_TYPE `enum`  of `("Integer16", "Unsigned Integer16", "Integer32", "Unsigned Integer32", "Float32", "Float64")` - Output raster data type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param MEAN `number` - Mean. A numeric value.
##' @param OUTPUT `rasterDestination` - Output raster. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Output raste
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_createrandompoissonrasterlayer <- function(EXTENT = qgisprocess::qgis_default_value(), TARGET_CRS = qgisprocess::qgis_default_value(), PIXEL_SIZE = qgisprocess::qgis_default_value(), OUTPUT_TYPE = qgisprocess::qgis_default_value(), MEAN = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("native:createrandompoissonrasterlayer",`EXTENT` = EXTENT, `TARGET_CRS` = TARGET_CRS, `PIXEL_SIZE` = PIXEL_SIZE, `OUTPUT_TYPE` = OUTPUT_TYPE, `MEAN` = MEAN, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}