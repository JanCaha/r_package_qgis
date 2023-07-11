##' QGIS Algorithm provided by SAGA Next Gen Colour normalized brovey sharpening (sagang:colournormalizedbroveysharpening). ---------------- Arguments ----------------  R: Red 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer G: Green 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer B: Blue 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer PAN: Panchromatic Channel 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer R_SHARP: Red 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer G_SHARP: Green 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer B_SHARP: Blue 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer SHARPEN: Sharpened Channels 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer RESAMPLING: Resampling 	Default value:	2 	Argument type:	enum 	Available values: 		- 0: (0) nearest neighbour 		- 1: (1) bilinear 		- 2: (2) cubic convolution 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Colour normalized brovey sharpening
##'
##' @param R `raster` - Red. Path to a raster layer.
##' @param G `raster` - Green. Path to a raster layer.
##' @param B `raster` - Blue. Path to a raster layer.
##' @param PAN `raster` - Panchromatic Channel. Path to a raster layer.
##' @param R_SHARP `rasterDestination` - Red. Path for new raster layer.
##' @param G_SHARP `rasterDestination` - Green. Path for new raster layer.
##' @param B_SHARP `rasterDestination` - Blue. Path for new raster layer.
##' @param SHARPEN `rasterDestination` - Sharpened Channels. Path for new raster layer.
##' @param RESAMPLING `enum`  of `("(0) nearest neighbour", "(1) bilinear", "(2) cubic convolution")` - Resampling. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * B_SHARP - outputRaster - Blue
##' * G_SHARP - outputRaster - Green
##' * R_SHARP - outputRaster - Red
##' * SHARPEN - outputRaster - Sharpened Channels
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_colournormalizedbroveysharpening <- function(R = qgisprocess:::qgis_default_value(), G = qgisprocess:::qgis_default_value(), B = qgisprocess:::qgis_default_value(), PAN = qgisprocess:::qgis_default_value(), R_SHARP = qgisprocess:::qgis_default_value(), G_SHARP = qgisprocess:::qgis_default_value(), B_SHARP = qgisprocess:::qgis_default_value(), SHARPEN = qgisprocess:::qgis_default_value(), RESAMPLING = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:colournormalizedbroveysharpening")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:colournormalizedbroveysharpening", `R` = R, `G` = G, `B` = B, `PAN` = PAN, `R_SHARP` = R_SHARP, `G_SHARP` = G_SHARP, `B_SHARP` = B_SHARP, `SHARPEN` = SHARPEN, `RESAMPLING` = RESAMPLING,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:colournormalizedbroveysharpening", `R` = R, `G` = G, `B` = B, `PAN` = PAN, `R_SHARP` = R_SHARP, `G_SHARP` = G_SHARP, `B_SHARP` = B_SHARP, `SHARPEN` = SHARPEN, `RESAMPLING` = RESAMPLING,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "B_SHARP")
  }
}