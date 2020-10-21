##' QGIS Algorithm provided by GDAL Aspect (gdal:aspect)
##'
##' @title QGIS algorithm Aspect
##'
##' @param INPUT `raster` - Input layer. Path to a raster layer.
##' @param BAND `band` - Band number. Integer value representing an existing raster band number.
##' @param TRIG_ANGLE `boolean` - Return trigonometric angle instead of azimuth. 1 for true/yes. 0 for false/no.
##' @param ZERO_FLAT `boolean` - Return 0 for flat instead of -9999. 1 for true/yes. 0 for false/no.
##' @param COMPUTE_EDGES `boolean` - Compute edges. 1 for true/yes. 0 for false/no.
##' @param ZEVENBERGEN `boolean` - Use Zevenbergen&Thorne formula instead of the Horn's one. 1 for true/yes. 0 for false/no.
##' @param OPTIONS `string` - Additional creation options. String value.
##' @param EXTRA `string` - Additional command-line parameters. String value.
##' @param OUTPUT `rasterDestination` - Aspect. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Aspect
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

gdal_aspect <- function(INPUT = qgisprocess::qgis_default_value(), BAND = qgisprocess::qgis_default_value(), TRIG_ANGLE = qgisprocess::qgis_default_value(), ZERO_FLAT = qgisprocess::qgis_default_value(), COMPUTE_EDGES = qgisprocess::qgis_default_value(), ZEVENBERGEN = qgisprocess::qgis_default_value(), OPTIONS = qgisprocess::qgis_default_value(), EXTRA = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("gdal:aspect",`INPUT` = INPUT, `BAND` = BAND, `TRIG_ANGLE` = TRIG_ANGLE, `ZERO_FLAT` = ZERO_FLAT, `COMPUTE_EDGES` = COMPUTE_EDGES, `ZEVENBERGEN` = ZEVENBERGEN, `OPTIONS` = OPTIONS, `EXTRA` = EXTRA, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}