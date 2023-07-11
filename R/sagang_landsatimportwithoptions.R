##' QGIS Algorithm provided by SAGA Next Gen Landsat import with options (sagang:landsatimportwithoptions). ---------------- Arguments ----------------  FILES: Files 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file BANDS: Bands 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer PROJECTION: Coordinate System 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) UTM North 		- 1: (1) UTM South 		- 2: (2) Geographic Coordinates 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' RESAMPLING: Resampling 	Default value:	3 	Argument type:	enum 	Available values: 		- 0: (0) Nearest Neighbour 		- 1: (1) Bilinear Interpolation 		- 2: (2) Bicubic Spline Interpolation 		- 3: (3) B-Spline Interpolation 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' SHOW_RGB: Show a Composite 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SHOW_R: Red 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) no choice available 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' SHOW_G: Green 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) no choice available 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' SHOW_B: Blue 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) no choice available 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Landsat import with options
##'
##' @param FILES `file` - Files. Path to a file.
##' @param BANDS `rasterDestination` - Bands. Path for new raster layer.
##' @param PROJECTION `enum`  of `("(0) UTM North", "(1) UTM South", "(2) Geographic Coordinates")` - Coordinate System. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param RESAMPLING `enum`  of `("(0) Nearest Neighbour", "(1) Bilinear Interpolation", "(2) Bicubic Spline Interpolation", "(3) B-Spline Interpolation")` - Resampling. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SHOW_RGB `boolean` - Show a Composite. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SHOW_R `enum`  of `("(0) no choice available")` - Red. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SHOW_G `enum`  of `("(0) no choice available")` - Green. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SHOW_B `enum`  of `("(0) no choice available")` - Blue. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * BANDS - outputRaster - Bands
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_landsatimportwithoptions <- function(FILES = qgisprocess:::qgis_default_value(), BANDS = qgisprocess:::qgis_default_value(), PROJECTION = qgisprocess:::qgis_default_value(), RESAMPLING = qgisprocess:::qgis_default_value(), SHOW_RGB = qgisprocess:::qgis_default_value(), SHOW_R = qgisprocess:::qgis_default_value(), SHOW_G = qgisprocess:::qgis_default_value(), SHOW_B = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:landsatimportwithoptions")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:landsatimportwithoptions", `FILES` = FILES, `BANDS` = BANDS, `PROJECTION` = PROJECTION, `RESAMPLING` = RESAMPLING, `SHOW_RGB` = SHOW_RGB, `SHOW_R` = SHOW_R, `SHOW_G` = SHOW_G, `SHOW_B` = SHOW_B,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:landsatimportwithoptions", `FILES` = FILES, `BANDS` = BANDS, `PROJECTION` = PROJECTION, `RESAMPLING` = RESAMPLING, `SHOW_RGB` = SHOW_RGB, `SHOW_R` = SHOW_R, `SHOW_G` = SHOW_G, `SHOW_B` = SHOW_B,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "BANDS")
  }
}