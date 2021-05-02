##' QGIS Algorithm provided by QGIS (native c++) Create random raster layer (gamma distribution) (native:createrandomgammarasterlayer)
##'
##' @title QGIS algorithm Create random raster layer (gamma distribution)
##'
##' @param EXTENT `extent` - Desired extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param TARGET_CRS `crs` - Target CRS. CRS as an auth ID (e.g. 'EPSG:3111'). CRS as a PROJ4 string (e.g. 'PROJ4:…'). CRS as a WKT string (e.g. 'WKT:…'). Path to a layer. The CRS of the layer is used..
##' @param PIXEL_SIZE `number` - Pixel size. A numeric value.
##' @param OUTPUT_TYPE `enum`  of `("Float32", "Float64")` - Output raster data type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ALPHA `number` - Alpha. A numeric value.
##' @param BETA `number` - Beta. A numeric value.
##' @param OUTPUT `rasterDestination` - Output raster. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Output raster
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_createrandomgammarasterlayer <- function(EXTENT = qgisprocess::qgis_default_value(), TARGET_CRS = qgisprocess::qgis_default_value(), PIXEL_SIZE = qgisprocess::qgis_default_value(), OUTPUT_TYPE = qgisprocess::qgis_default_value(), ALPHA = qgisprocess::qgis_default_value(), BETA = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("native:createrandomgammarasterlayer")
  output <- qgisprocess::qgis_run_algorithm("native:createrandomgammarasterlayer",`EXTENT` = EXTENT, `TARGET_CRS` = TARGET_CRS, `PIXEL_SIZE` = PIXEL_SIZE, `OUTPUT_TYPE` = OUTPUT_TYPE, `ALPHA` = ALPHA, `BETA` = BETA, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}