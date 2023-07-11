##' QGIS Algorithm provided by SAGA Next Gen Principal component based image sharpening (sagang:principalcomponentbasedimagesharpening). ---------------- Arguments ----------------  GRIDS: Original Channels 	Argument type:	multilayer PAN: Panchromatic Channel 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer SHARPEN: Sharpened Channels 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer METHOD: Method 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) correlation matrix 		- 1: (1) variance-covariance matrix 		- 2: (2) sums-of-squares-and-cross-products matrix 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' RESAMPLING: Resampling 	Default value:	2 	Argument type:	enum 	Available values: 		- 0: (0) nearest neighbour 		- 1: (1) bilinear 		- 2: (2) cubic convolution 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' PAN_MATCH: Panchromatic Channel Matching 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) normalized 		- 1: (1) standardized 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' OVERWRITE: Overwrite 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Principal component based image sharpening
##'
##' @param GRIDS `multilayer` - Original Channels. .
##' @param PAN `raster` - Panchromatic Channel. Path to a raster layer.
##' @param SHARPEN `rasterDestination` - Sharpened Channels. Path for new raster layer.
##' @param METHOD `enum`  of `("(0) correlation matrix", "(1) variance-covariance matrix", "(2) sums-of-squares-and-cross-products matrix")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param RESAMPLING `enum`  of `("(0) nearest neighbour", "(1) bilinear", "(2) cubic convolution")` - Resampling. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param PAN_MATCH `enum`  of `("(0) normalized", "(1) standardized")` - Panchromatic Channel Matching. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param OVERWRITE `boolean` - Overwrite. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
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

sagang_principalcomponentbasedimagesharpening <- function(GRIDS = qgisprocess:::qgis_default_value(), PAN = qgisprocess:::qgis_default_value(), SHARPEN = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), RESAMPLING = qgisprocess:::qgis_default_value(), PAN_MATCH = qgisprocess:::qgis_default_value(), OVERWRITE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:principalcomponentbasedimagesharpening")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:principalcomponentbasedimagesharpening", `GRIDS` = GRIDS, `PAN` = PAN, `SHARPEN` = SHARPEN, `METHOD` = METHOD, `RESAMPLING` = RESAMPLING, `PAN_MATCH` = PAN_MATCH, `OVERWRITE` = OVERWRITE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:principalcomponentbasedimagesharpening", `GRIDS` = GRIDS, `PAN` = PAN, `SHARPEN` = SHARPEN, `METHOD` = METHOD, `RESAMPLING` = RESAMPLING, `PAN_MATCH` = PAN_MATCH, `OVERWRITE` = OVERWRITE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "SHARPEN")
  }
}