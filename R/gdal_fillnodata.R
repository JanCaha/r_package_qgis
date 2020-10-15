##' QGIS Algorithm provided by GDAL Fill nodata (gdal:fillnodata)
##'
##' @title QGIS algorithm Fill nodata
##'
##' @param INPUT `raster` - Input layer. Path to a raster layer.
##' @param BAND `band` - Band number. Integer value representing an existing raster band number.
##' @param DISTANCE `number` - Maximum distance (in pixels) to search out for values to interpolate. A numeric value.
##' @param ITERATIONS `number` - Number of smoothing iterations to run after the interpolation. A numeric value.
##' @param NO_MASK `boolean` - Do not use the default validity mask for the input band. 1 for true/yes. 0 for false/no.
##' @param MASK_LAYER `raster` - Validity mask. Path to a raster layer.
##' @param OPTIONS `string` - Additional creation options. String value.
##' @param EXTRA `string` - Additional command-line parameters. String value.
##' @param OUTPUT `rasterDestination` - Filled. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Filled
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

gdal_fillnodata <- function(INPUT = qgisprocess::qgis_default_value(), BAND = qgisprocess::qgis_default_value(), DISTANCE = qgisprocess::qgis_default_value(), ITERATIONS = qgisprocess::qgis_default_value(), NO_MASK = qgisprocess::qgis_default_value(), MASK_LAYER = qgisprocess::qgis_default_value(), OPTIONS = qgisprocess::qgis_default_value(), EXTRA = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("gdal:fillnodata",`INPUT` = INPUT, `BAND` = BAND, `DISTANCE` = DISTANCE, `ITERATIONS` = ITERATIONS, `NO_MASK` = NO_MASK, `MASK_LAYER` = MASK_LAYER, `OPTIONS` = OPTIONS, `EXTRA` = EXTRA, `OUTPUT` = OUTPUT,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
}
}