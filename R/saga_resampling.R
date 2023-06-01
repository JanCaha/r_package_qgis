##' QGIS Algorithm provided by SAGA Resampling (saga:resampling)
##'
##' @title QGIS algorithm Resampling
##'
##' @param INPUT `raster` - Grid. Path to a raster layer.
##' @param KEEP_TYPE `boolean` - Preserve Data Type. 1 for true/yes. 0 for false/no.
##' @param SCALE_UP `enum`  of `("[0] Nearest Neighbor", "[1] Bilinear Interpolation", "[2] Bicubic Spline Interpolation", "[3] B-Spline Interpolation", "[4] Mean Value", "[5] Mean Value (cell area weighted)", "[6] Minimum Value", "[7] Maximum Value", "[8] Majority")` - Upscaling Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SCALE_DOWN `enum`  of `("[0] Nearest Neighbor", "[1] Bilinear Interpolation", "[2] Bicubic Spline Interpolation", "[3] B-Spline Interpolation")` - Downscaling Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX `extent` - Output extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used.. Original algorithm parameter name: TARGET_USER_XMIN TARGET_USER_XMAX TARGET_USER_YMIN TARGET_USER_YMAX.
##' @param TARGET_USER_SIZE `number` - Cellsize. A numeric value.
##' @param TARGET_USER_FITS `enum`  of `("[0] nodes", "[1] cells")` - Fit. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param TARGET_TEMPLATE `raster` - Target system. Path to a raster layer.
##' @param OUTPUT `rasterDestination` - Grid. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Grid
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

saga_resampling <- function(INPUT = qgisprocess:::qgis_default_value(), KEEP_TYPE = qgisprocess:::qgis_default_value(), SCALE_UP = qgisprocess:::qgis_default_value(), SCALE_DOWN = qgisprocess:::qgis_default_value(), TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX = qgisprocess:::qgis_default_value(), TARGET_USER_SIZE = qgisprocess:::qgis_default_value(), TARGET_USER_FITS = qgisprocess:::qgis_default_value(), TARGET_TEMPLATE = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:resampling")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:resampling", `INPUT` = INPUT, `KEEP_TYPE` = KEEP_TYPE, `SCALE_UP` = SCALE_UP, `SCALE_DOWN` = SCALE_DOWN, `TARGET_USER_XMIN TARGET_USER_XMAX TARGET_USER_YMIN TARGET_USER_YMAX` = TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX, `TARGET_USER_SIZE` = TARGET_USER_SIZE, `TARGET_USER_FITS` = TARGET_USER_FITS, `TARGET_TEMPLATE` = TARGET_TEMPLATE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:resampling", `INPUT` = INPUT, `KEEP_TYPE` = KEEP_TYPE, `SCALE_UP` = SCALE_UP, `SCALE_DOWN` = SCALE_DOWN, `TARGET_USER_XMIN TARGET_USER_XMAX TARGET_USER_YMIN TARGET_USER_YMAX` = TARGET_USER_XMIN_TARGET_USER_XMAX_TARGET_USER_YMIN_TARGET_USER_YMAX, `TARGET_USER_SIZE` = TARGET_USER_SIZE, `TARGET_USER_FITS` = TARGET_USER_FITS, `TARGET_TEMPLATE` = TARGET_TEMPLATE, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}