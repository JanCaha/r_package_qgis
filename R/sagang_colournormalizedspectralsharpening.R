##' QGIS Algorithm provided by SAGA Next Gen Colour normalized spectral sharpening (sagang:colournormalizedspectralsharpening). ---------------- Arguments ----------------  GRIDS: Original Channels 	Argument type:	multilayer PAN: Panchromatic Channel 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer SHARPEN: Sharpened Channels 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer RESAMPLING: Resampling 	Default value:	2 	Argument type:	enum 	Available values: 		- 0: (0) nearest neighbour 		- 1: (1) bilinear 		- 2: (2) cubic convolution 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Colour normalized spectral sharpening
##'
##' @param GRIDS `multilayer` - Original Channels. .
##' @param PAN `raster` - Panchromatic Channel. Path to a raster layer.
##' @param SHARPEN `rasterDestination` - Sharpened Channels. Path for new raster layer.
##' @param RESAMPLING `enum`  of `("(0) nearest neighbour", "(1) bilinear", "(2) cubic convolution")` - Resampling. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * SHARPEN - outputRaster - Sharpened Channels
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_colournormalizedspectralsharpening <- function(GRIDS = qgisprocess:::qgis_default_value(), PAN = qgisprocess:::qgis_default_value(), SHARPEN = qgisprocess:::qgis_default_value(), RESAMPLING = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:colournormalizedspectralsharpening")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:colournormalizedspectralsharpening", `GRIDS` = GRIDS, `PAN` = PAN, `SHARPEN` = SHARPEN, `RESAMPLING` = RESAMPLING,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:colournormalizedspectralsharpening", `GRIDS` = GRIDS, `PAN` = PAN, `SHARPEN` = SHARPEN, `RESAMPLING` = RESAMPLING,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "SHARPEN")
  }
}