##' QGIS Algorithm provided by GDAL Build overviews (pyramids) (gdal:overviews)
##'
##' @title QGIS algorithm Build overviews (pyramids)
##'
##' @param INPUT `raster` - Input layer. Path to a raster layer.
##' @param CLEAN `boolean` - Remove all existing overviews. 1 for true/yes. 0 for false/no.
##' @param LEVELS `string` - Overview levels (e.g. 2 4 8 16). String value.
##' @param RESAMPLING `enum`  of `("Nearest Neighbour (default)", "Average", "Gaussian", "Cubic Convolution", "B-Spline Convolution", "Lanczos Windowed Sinc", "Average MP", "Average in Mag/Phase Space", "Mode")` - Resampling method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param FORMAT `enum`  of `("Internal (if possible)", "External (GTiff .ovr)", "External (ERDAS Imagine .aux)")` - Overviews format. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param EXTRA `string` - Additional command-line parameters. String value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Pyramidized
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

gdal_overviews <- function(INPUT = qgisprocess::qgis_default_value(), CLEAN = qgisprocess::qgis_default_value(), LEVELS = qgisprocess::qgis_default_value(), RESAMPLING = qgisprocess::qgis_default_value(), FORMAT = qgisprocess::qgis_default_value(), EXTRA = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("gdal:overviews")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("gdal:overviews", `INPUT` = INPUT, `CLEAN` = CLEAN, `LEVELS` = LEVELS, `RESAMPLING` = RESAMPLING, `FORMAT` = FORMAT, `EXTRA` = EXTRA,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("gdal:overviews", `INPUT` = INPUT, `CLEAN` = CLEAN, `LEVELS` = LEVELS, `RESAMPLING` = RESAMPLING, `FORMAT` = FORMAT, `EXTRA` = EXTRA,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}