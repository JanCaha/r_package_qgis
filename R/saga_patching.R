##' QGIS Algorithm provided by SAGA Patching (saga:patching)
##'
##' @title QGIS algorithm Patching
##'
##' @param ORIGINAL `raster` - Grid. Path to a raster layer.
##' @param ADDITIONAL `raster` - Patch Grid. Path to a raster layer.
##' @param RESAMPLING `enum`  of `("[0] Nearest Neighbor", "[1] Bilinear Interpolation", "[2] Inverse Distance Interpolation", "[3] Bicubic Spline Interpolation", "[4] B-Spline Interpolation")` - Interpolation Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param COMPLETED `rasterDestination` - Completed Grid. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * COMPLETED - outputRaster - Completed Grid
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

saga_patching <- function(ORIGINAL = qgisprocess:::qgis_default_value(), ADDITIONAL = qgisprocess:::qgis_default_value(), RESAMPLING = qgisprocess:::qgis_default_value(), COMPLETED = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:patching")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:patching", `ORIGINAL` = ORIGINAL, `ADDITIONAL` = ADDITIONAL, `RESAMPLING` = RESAMPLING, `COMPLETED` = COMPLETED,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:patching", `ORIGINAL` = ORIGINAL, `ADDITIONAL` = ADDITIONAL, `RESAMPLING` = RESAMPLING, `COMPLETED` = COMPLETED,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "COMPLETED")
  }
}