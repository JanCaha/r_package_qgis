##' QGIS Algorithm provided by SAGA Next Gen Import landsat scene (sagang:importlandsatscene). ---------------- Arguments ----------------  METAFILE: Metadata File 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file BANDS: Bands 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer BAND_INFO: Band Info 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer MULTI2GRIDS: Multispectral Bands as Grid Collection 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SKIP_PAN: Skip Panchromatic Band 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SKIP_AEROSOL: Skip Aerosol Band 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SKIP_CIRRUS: Skip Cirrus Band 	Default value:	true 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression CALIBRATION: Radiometric Calibration 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) none 		- 1: (1) radiance 		- 2: (2) reflectance 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' DATA_TYPE: Output Data Type 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) integers with scaling 		- 1: (1) floating point numbers 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' TEMP_UNIT: Temperature Unit 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) Kelvin 		- 1: (1) Celsius 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' PROJECTION: Coordinate System 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) UTM North 		- 1: (1) UTM South 		- 2: (2) Geographic Coordinates 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' RESAMPLING: Resampling 	Default value:	3 	Argument type:	enum 	Available values: 		- 0: (0) Nearest Neighbour 		- 1: (1) Bilinear Interpolation 		- 2: (2) Bicubic Spline Interpolation 		- 3: (3) B-Spline Interpolation 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Import landsat scene
##'
##' @param METAFILE `file` - Metadata File. Path to a file.
##' @param BANDS `rasterDestination` - Bands. Path for new raster layer.
##' @param BAND_INFO `vectorDestination` - Band Info. Path for new vector layer.
##' @param MULTI2GRIDS `boolean` - Multispectral Bands as Grid Collection. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SKIP_PAN `boolean` - Skip Panchromatic Band. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SKIP_AEROSOL `boolean` - Skip Aerosol Band. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SKIP_CIRRUS `boolean` - Skip Cirrus Band. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param CALIBRATION `enum`  of `("(0) none", "(1) radiance", "(2) reflectance")` - Radiometric Calibration. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DATA_TYPE `enum`  of `("(0) integers with scaling", "(1) floating point numbers")` - Output Data Type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param TEMP_UNIT `enum`  of `("(0) Kelvin", "(1) Celsius")` - Temperature Unit. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
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
##' * BAND_INFO - outputVector - Band Info
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_importlandsatscene <- function(METAFILE = qgisprocess:::qgis_default_value(), BANDS = qgisprocess:::qgis_default_value(), BAND_INFO = qgisprocess:::qgis_default_value(), MULTI2GRIDS = qgisprocess:::qgis_default_value(), SKIP_PAN = qgisprocess:::qgis_default_value(), SKIP_AEROSOL = qgisprocess:::qgis_default_value(), SKIP_CIRRUS = qgisprocess:::qgis_default_value(), CALIBRATION = qgisprocess:::qgis_default_value(), DATA_TYPE = qgisprocess:::qgis_default_value(), TEMP_UNIT = qgisprocess:::qgis_default_value(), PROJECTION = qgisprocess:::qgis_default_value(), RESAMPLING = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:importlandsatscene")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:importlandsatscene", `METAFILE` = METAFILE, `BANDS` = BANDS, `BAND_INFO` = BAND_INFO, `MULTI2GRIDS` = MULTI2GRIDS, `SKIP_PAN` = SKIP_PAN, `SKIP_AEROSOL` = SKIP_AEROSOL, `SKIP_CIRRUS` = SKIP_CIRRUS, `CALIBRATION` = CALIBRATION, `DATA_TYPE` = DATA_TYPE, `TEMP_UNIT` = TEMP_UNIT, `PROJECTION` = PROJECTION, `RESAMPLING` = RESAMPLING,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:importlandsatscene", `METAFILE` = METAFILE, `BANDS` = BANDS, `BAND_INFO` = BAND_INFO, `MULTI2GRIDS` = MULTI2GRIDS, `SKIP_PAN` = SKIP_PAN, `SKIP_AEROSOL` = SKIP_AEROSOL, `SKIP_CIRRUS` = SKIP_CIRRUS, `CALIBRATION` = CALIBRATION, `DATA_TYPE` = DATA_TYPE, `TEMP_UNIT` = TEMP_UNIT, `PROJECTION` = PROJECTION, `RESAMPLING` = RESAMPLING,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "BANDS")
  }
}