##' QGIS Algorithm provided by GDAL Rasterize (vector to raster) (gdal:rasterize)
##'
##' @title QGIS algorithm Rasterize (vector to raster)
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param FIELD `field` - Field to use for a burn-in value. The name of an existing field. ; delimited list of existing field names.
##' @param BURN `number` - A fixed value to burn. A numeric value.
##' @param UNITS `enum`  of `("Pixels", "Georeferenced units")` - Output raster size units. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param WIDTH `number` - Width/Horizontal resolution. A numeric value.
##' @param HEIGHT `number` - Height/Vertical resolution. A numeric value.
##' @param EXTENT `extent` - Output extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param NODATA `number` - Assign a specified nodata value to output bands. A numeric value.
##' @param OPTIONS `string` - Additional creation options. String value.
##' @param DATA_TYPE `enum`  of `("Byte", "Int16", "UInt16", "UInt32", "Int32", "Float32", "Float64", "CInt16", "CInt32", "CFloat32", "CFloat64")` - Output data type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param INIT `number` - Pre-initialize the output image with value. A numeric value.
##' @param INVERT `boolean` - Invert rasterization. 1 for true/yes. 0 for false/no.
##' @param EXTRA `string` - Additional command-line parameters. String value.
##' @param OUTPUT `rasterDestination` - Rasterized. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Rasterized
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

gdal_rasterize <- function(INPUT = qgisprocess::qgis_default_value(), FIELD = qgisprocess::qgis_default_value(), BURN = qgisprocess::qgis_default_value(), UNITS = qgisprocess::qgis_default_value(), WIDTH = qgisprocess::qgis_default_value(), HEIGHT = qgisprocess::qgis_default_value(), EXTENT = qgisprocess::qgis_default_value(), NODATA = qgisprocess::qgis_default_value(), OPTIONS = qgisprocess::qgis_default_value(), DATA_TYPE = qgisprocess::qgis_default_value(), INIT = qgisprocess::qgis_default_value(), INVERT = qgisprocess::qgis_default_value(), EXTRA = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("gdal:rasterize")

  output <- qgisprocess::qgis_run_algorithm("gdal:rasterize", `INPUT` = INPUT, `FIELD` = FIELD, `BURN` = BURN, `UNITS` = UNITS, `WIDTH` = WIDTH, `HEIGHT` = HEIGHT, `EXTENT` = EXTENT, `NODATA` = NODATA, `OPTIONS` = OPTIONS, `DATA_TYPE` = DATA_TYPE, `INIT` = INIT, `INVERT` = INVERT, `EXTRA` = EXTRA, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}