##' QGIS Algorithm provided by SAGA Next Gen Patching (sagang:patching). ---------------- Arguments ----------------  ORIGINAL: Grid 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer COMPLETED: Patched Grid 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer ADDITIONAL: Patch Grid 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer RESAMPLING: Resampling 	Default value:	3 	Argument type:	enum 	Available values: 		- 0: (0) Nearest Neighbour 		- 1: (1) Bilinear Interpolation 		- 2: (2) Bicubic Spline Interpolation 		- 3: (3) B-Spline Interpolation 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Patching
##'
##' @param ORIGINAL `raster` - Grid. Path to a raster layer.
##' @param COMPLETED `rasterDestination` - Patched Grid. Path for new raster layer.
##' @param ADDITIONAL `raster` - Patch Grid. Path to a raster layer.
##' @param RESAMPLING `enum`  of `("(0) Nearest Neighbour", "(1) Bilinear Interpolation", "(2) Bicubic Spline Interpolation", "(3) B-Spline Interpolation")` - Resampling. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * COMPLETED - outputRaster - Patched Grid
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_patching <- function(ORIGINAL = qgisprocess:::qgis_default_value(), COMPLETED = qgisprocess:::qgis_default_value(), ADDITIONAL = qgisprocess:::qgis_default_value(), RESAMPLING = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:patching")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:patching", `ORIGINAL` = ORIGINAL, `COMPLETED` = COMPLETED, `ADDITIONAL` = ADDITIONAL, `RESAMPLING` = RESAMPLING,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:patching", `ORIGINAL` = ORIGINAL, `COMPLETED` = COMPLETED, `ADDITIONAL` = ADDITIONAL, `RESAMPLING` = RESAMPLING,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "COMPLETED")
  }
}