##' QGIS Algorithm provided by GDAL Grid (IDW with nearest neighbor searching) (gdal:gridinversedistancenearestneighbor)
##'
##' @title QGIS algorithm Grid (IDW with nearest neighbor searching)
##'
##' @param INPUT `source` - Point layer. Path to a vector layer.
##' @param Z_FIELD `field` - Z value from field. The name of an existing field. ; delimited list of existing field names.
##' @param POWER `number` - Weighting power. A numeric value.
##' @param SMOOTHING `number` - Smoothing. A numeric value.
##' @param RADIUS `number` - The radius of the search circle. A numeric value.
##' @param MAX_POINTS `number` - Maximum number of data points to use. A numeric value.
##' @param MIN_POINTS `number` - Minimum number of data points to use. A numeric value.
##' @param NODATA `number` - NODATA marker to fill empty points. A numeric value.
##' @param OPTIONS `string` - Additional creation options. String value.
##' @param EXTRA `string` - Additional command-line parameters. String value.
##' @param DATA_TYPE `enum`  of `("Byte", "Int16", "UInt16", "UInt32", "Int32", "Float32", "Float64", "CInt16", "CInt32", "CFloat32", "CFloat64")` - Output data type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param OUTPUT `rasterDestination` - Interpolated (IDW with NN search). Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Interpolated (IDW with NN search)
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

gdal_gridinversedistancenearestneighbor <- function(INPUT = qgisprocess::qgis_default_value(), Z_FIELD = qgisprocess::qgis_default_value(), POWER = qgisprocess::qgis_default_value(), SMOOTHING = qgisprocess::qgis_default_value(), RADIUS = qgisprocess::qgis_default_value(), MAX_POINTS = qgisprocess::qgis_default_value(), MIN_POINTS = qgisprocess::qgis_default_value(), NODATA = qgisprocess::qgis_default_value(), OPTIONS = qgisprocess::qgis_default_value(), EXTRA = qgisprocess::qgis_default_value(), DATA_TYPE = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("gdal:gridinversedistancenearestneighbor")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("gdal:gridinversedistancenearestneighbor", `INPUT` = INPUT, `Z_FIELD` = Z_FIELD, `POWER` = POWER, `SMOOTHING` = SMOOTHING, `RADIUS` = RADIUS, `MAX_POINTS` = MAX_POINTS, `MIN_POINTS` = MIN_POINTS, `NODATA` = NODATA, `OPTIONS` = OPTIONS, `EXTRA` = EXTRA, `DATA_TYPE` = DATA_TYPE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("gdal:gridinversedistancenearestneighbor", `INPUT` = INPUT, `Z_FIELD` = Z_FIELD, `POWER` = POWER, `SMOOTHING` = SMOOTHING, `RADIUS` = RADIUS, `MAX_POINTS` = MAX_POINTS, `MIN_POINTS` = MIN_POINTS, `NODATA` = NODATA, `OPTIONS` = OPTIONS, `EXTRA` = EXTRA, `DATA_TYPE` = DATA_TYPE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}