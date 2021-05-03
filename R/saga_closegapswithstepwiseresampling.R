##' QGIS Algorithm provided by SAGA Close gaps with stepwise resampling (saga:closegapswithstepwiseresampling)
##'
##' @title QGIS algorithm Close gaps with stepwise resampling
##'
##' @param INPUT `raster` - Grid. Path to a raster layer.
##' @param MASK `raster` - Mask. Path to a raster layer.
##' @param RESULT `rasterDestination` - Result. Path for new raster layer.
##' @param RESAMPLING `enum`  of `("[0] Nearest Neighbour", "[1] Bilinear Interpolation", "[2] Bicubic Spline Interpolation", "[3] B-Spline Interpolation")` - Resampling. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param GROW `number` - Grow Factor. A numeric value.
##' @param PYRAMIDS `boolean` - Use Pyramids. 1 for true/yes. 0 for false/no.
##' @param START `enum`  of `("[0] grid cell size", "[1] user defined size")` - Start Size. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param START_SIZE `number` - User Defined Size. A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputRaster - Result
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_closegapswithstepwiseresampling <- function(INPUT = qgisprocess::qgis_default_value(), MASK = qgisprocess::qgis_default_value(), RESULT = qgisprocess::qgis_default_value(), RESAMPLING = qgisprocess::qgis_default_value(), GROW = qgisprocess::qgis_default_value(), PYRAMIDS = qgisprocess::qgis_default_value(), START = qgisprocess::qgis_default_value(), START_SIZE = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:closegapswithstepwiseresampling")
  output <- qgisprocess::qgis_run_algorithm("saga:closegapswithstepwiseresampling",`INPUT` = INPUT, `MASK` = MASK, `RESULT` = RESULT, `RESAMPLING` = RESAMPLING, `GROW` = GROW, `PYRAMIDS` = PYRAMIDS, `START` = START, `START_SIZE` = START_SIZE,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "RESULT")
  }
}