##' QGIS Algorithm provided by SAGA Next Gen Import sentinel-2 scene (sagang:importsentinel2scene). ---------------- Arguments ----------------  METAFILE: Metadata File 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file BANDS: Bands 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer MULTI2GRIDS: Multispectral Bands as Grid Collection 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SKIP_TCI: Skip True Color Image 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SKIP_60M: Skip Aerosol, Vapour, Cirrus 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression REFLECTANCE: Reflectance Values 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) original 		- 1: (1) fraction 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' PROJECTION: Coordinate System 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) UTM North 		- 1: (1) UTM South 		- 2: (2) Geographic Coordinates 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' RESAMPLING: Resampling 	Default value:	3 	Argument type:	enum 	Available values: 		- 0: (0) Nearest Neighbour 		- 1: (1) Bilinear Interpolation 		- 2: (2) Bicubic Spline Interpolation 		- 3: (3) B-Spline Interpolation 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Import sentinel-2 scene
##'
##' @param METAFILE `file` - Metadata File. Path to a file.
##' @param BANDS `rasterDestination` - Bands. Path for new raster layer.
##' @param MULTI2GRIDS `boolean` - Multispectral Bands as Grid Collection. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SKIP_TCI `boolean` - Skip True Color Image. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SKIP_60M `boolean` - Skip Aerosol, Vapour, Cirrus. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param REFLECTANCE `enum`  of `("(0) original", "(1) fraction")` - Reflectance Values. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param PROJECTION `enum`  of `("(0) UTM North", "(1) UTM South", "(2) Geographic Coordinates")` - Coordinate System. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param RESAMPLING `enum`  of `("(0) Nearest Neighbour", "(1) Bilinear Interpolation", "(2) Bicubic Spline Interpolation", "(3) B-Spline Interpolation")` - Resampling. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
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

sagang_importsentinel2scene <- function(METAFILE = qgisprocess:::qgis_default_value(), BANDS = qgisprocess:::qgis_default_value(), MULTI2GRIDS = qgisprocess:::qgis_default_value(), SKIP_TCI = qgisprocess:::qgis_default_value(), SKIP_60M = qgisprocess:::qgis_default_value(), REFLECTANCE = qgisprocess:::qgis_default_value(), PROJECTION = qgisprocess:::qgis_default_value(), RESAMPLING = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:importsentinel2scene")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:importsentinel2scene", `METAFILE` = METAFILE, `BANDS` = BANDS, `MULTI2GRIDS` = MULTI2GRIDS, `SKIP_TCI` = SKIP_TCI, `SKIP_60M` = SKIP_60M, `REFLECTANCE` = REFLECTANCE, `PROJECTION` = PROJECTION, `RESAMPLING` = RESAMPLING,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:importsentinel2scene", `METAFILE` = METAFILE, `BANDS` = BANDS, `MULTI2GRIDS` = MULTI2GRIDS, `SKIP_TCI` = SKIP_TCI, `SKIP_60M` = SKIP_60M, `REFLECTANCE` = REFLECTANCE, `PROJECTION` = PROJECTION, `RESAMPLING` = RESAMPLING,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "BANDS")
  }
}