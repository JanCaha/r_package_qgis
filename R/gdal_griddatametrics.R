##' QGIS Algorithm provided by GDAL Grid (Data metrics) (gdal:griddatametrics)
##'
##' @title QGIS algorithm Grid (Data metrics)
##'
##' @param INPUT `source` - Point layer. Path to a vector layer.
##' @param Z_FIELD `field` - Z value from field. The name of an existing field. ; delimited list of existing field names.
##' @param METRIC `enum`  of `("Minimum", "Maximum", "Range", "Count", "Average distance", "Average distance between points")` - Data metric to use. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param RADIUS_1 `number` - The first radius of search ellipse. A numeric value.
##' @param RADIUS_2 `number` - The second radius of search ellipse. A numeric value.
##' @param ANGLE `number` - Angle of search ellipse rotation in degrees (counter clockwise). A numeric value.
##' @param MIN_POINTS `number` - Minimum number of data points to use. A numeric value.
##' @param NODATA `number` - NODATA marker to fill empty points. A numeric value.
##' @param OPTIONS `string` - Additional creation options. String value.
##' @param EXTRA `string` - Additional command-line parameters. String value.
##' @param DATA_TYPE `enum`  of `("Byte", "Int16", "UInt16", "UInt32", "Int32", "Float32", "Float64", "CInt16", "CInt32", "CFloat32", "CFloat64")` - Output data type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param OUTPUT `rasterDestination` - Interpolated (data metrics). Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Interpolated (data metrics)
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

gdal_griddatametrics <- function(INPUT = qgisprocess::qgis_default_value(), Z_FIELD = qgisprocess::qgis_default_value(), METRIC = qgisprocess::qgis_default_value(), RADIUS_1 = qgisprocess::qgis_default_value(), RADIUS_2 = qgisprocess::qgis_default_value(), ANGLE = qgisprocess::qgis_default_value(), MIN_POINTS = qgisprocess::qgis_default_value(), NODATA = qgisprocess::qgis_default_value(), OPTIONS = qgisprocess::qgis_default_value(), EXTRA = qgisprocess::qgis_default_value(), DATA_TYPE = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("gdal:griddatametrics")

  output <- qgisprocess::qgis_run_algorithm("gdal:griddatametrics", `INPUT` = INPUT, `Z_FIELD` = Z_FIELD, `METRIC` = METRIC, `RADIUS_1` = RADIUS_1, `RADIUS_2` = RADIUS_2, `ANGLE` = ANGLE, `MIN_POINTS` = MIN_POINTS, `NODATA` = NODATA, `OPTIONS` = OPTIONS, `EXTRA` = EXTRA, `DATA_TYPE` = DATA_TYPE, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}