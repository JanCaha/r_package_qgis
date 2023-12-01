##' QGIS Algorithm provided by GDAL Retile (gdal:retile). ---------------- Arguments ----------------  INPUT: Input files 	Argument type:	multilayer TILE_SIZE_X: Tile width 	Default value:	256 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression TILE_SIZE_Y: Tile height 	Default value:	256 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression OVERLAP: Overlap in pixels between consecutive tiles 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression LEVELS: Number of pyramids levels to build 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression SOURCE_CRS: Source coordinate reference system (optional) 	Argument type:	crs 	Acceptable values: 		- CRS as an auth ID (e.g. 'EPSG:3111') 		- CRS as a PROJ4 string (e.g. 'PROJ4:…') 		- CRS as a WKT string (e.g. 'WKT:…') 		- Path to a layer. The CRS of the layer is used. RESAMPLING: Resampling method 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: Nearest Neighbour 		- 1: Bilinear (2x2 Kernel) 		- 2: Cubic (4x4 Kernel) 		- 3: Cubic B-Spline (4x4 Kernel) 		- 4: Lanczos (6x6 Kernel) 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' DELIMITER: Column delimiter used in the CSV file (optional) 	Default value:	; 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression OPTIONS: Additional creation options (optional) 	Default value:	 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression EXTRA: Additional command-line parameters (optional) 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DATA_TYPE: Output data type 	Default value:	5 	Argument type:	enum 	Available values: 		- 0: Byte 		- 1: Int16 		- 2: UInt16 		- 3: UInt32 		- 4: Int32 		- 5: Float32 		- 6: Float64 		- 7: CInt16 		- 8: CInt32 		- 9: CFloat32 		- 10: CFloat64 		- 11: Int8 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' ONLY_PYRAMIDS: Build only the pyramids 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DIR_FOR_ROW: Use separate directory for each tiles row 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression OUTPUT: Output directory 	Argument type:	folderDestination 	Acceptable values: 		- Path for an existing or new folder OUTPUT_CSV: CSV file containing the tile(s) georeferencing information (optional) 	Argument type:	fileDestination 	Acceptable values: 		- Path for new file
##'
##' @title QGIS algorithm - Retile
##'
##' @param INPUT `multilayer` - Input files. .
##' @param TILE_SIZE_X `number` - Tile width. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TILE_SIZE_Y `number` - Tile height. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OVERLAP `number` - Overlap in pixels between consecutive tiles. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param LEVELS `number` - Number of pyramids levels to build. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SOURCE_CRS `crs` - Source coordinate reference system. CRS as an auth ID (e.g. 'EPSG:3111'). CRS as a PROJ4 string (e.g. 'PROJ4:…'). CRS as a WKT string (e.g. 'WKT:…'). Path to a layer. The CRS of the layer is used..
##' @param RESAMPLING `enum`  of `("Nearest Neighbour", "Bilinear (2x2 Kernel)", "Cubic (4x4 Kernel)", "Cubic B-Spline (4x4 Kernel)", "Lanczos (6x6 Kernel)")` - Resampling method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DELIMITER `string` - Column delimiter used in the CSV file. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OPTIONS `string` - Additional creation options. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param EXTRA `string` - Additional command-line parameters. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DATA_TYPE `enum`  of `("Byte", "Int16", "UInt16", "UInt32", "Int32", "Float32", "Float64", "CInt16", "CInt32", "CFloat32", "CFloat64", "Int8")` - Output data type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ONLY_PYRAMIDS `boolean` - Build only the pyramids. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DIR_FOR_ROW `boolean` - Use separate directory for each tiles row. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `folderDestination` - Output directory. Path for an existing or new folder.
##' @param OUTPUT_CSV `fileDestination` - CSV file containing the tile(s) georeferencing information. Path for new file.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputFolder - Output directory
##' * OUTPUT_CSV - outputFile - CSV file containing the tile(s) georeferencing information
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

gdal_retile <- function(INPUT = qgisprocess:::qgis_default_value(), TILE_SIZE_X = qgisprocess:::qgis_default_value(), TILE_SIZE_Y = qgisprocess:::qgis_default_value(), OVERLAP = qgisprocess:::qgis_default_value(), LEVELS = qgisprocess:::qgis_default_value(), SOURCE_CRS = qgisprocess:::qgis_default_value(), RESAMPLING = qgisprocess:::qgis_default_value(), DELIMITER = qgisprocess:::qgis_default_value(), OPTIONS = qgisprocess:::qgis_default_value(), EXTRA = qgisprocess:::qgis_default_value(), DATA_TYPE = qgisprocess:::qgis_default_value(), ONLY_PYRAMIDS = qgisprocess:::qgis_default_value(), DIR_FOR_ROW = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(), OUTPUT_CSV = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("gdal:retile")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("gdal:retile", `INPUT` = INPUT, `TILE_SIZE_X` = TILE_SIZE_X, `TILE_SIZE_Y` = TILE_SIZE_Y, `OVERLAP` = OVERLAP, `LEVELS` = LEVELS, `SOURCE_CRS` = SOURCE_CRS, `RESAMPLING` = RESAMPLING, `DELIMITER` = DELIMITER, `OPTIONS` = OPTIONS, `EXTRA` = EXTRA, `DATA_TYPE` = DATA_TYPE, `ONLY_PYRAMIDS` = ONLY_PYRAMIDS, `DIR_FOR_ROW` = DIR_FOR_ROW, `OUTPUT` = OUTPUT, `OUTPUT_CSV` = OUTPUT_CSV,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("gdal:retile", `INPUT` = INPUT, `TILE_SIZE_X` = TILE_SIZE_X, `TILE_SIZE_Y` = TILE_SIZE_Y, `OVERLAP` = OVERLAP, `LEVELS` = LEVELS, `SOURCE_CRS` = SOURCE_CRS, `RESAMPLING` = RESAMPLING, `DELIMITER` = DELIMITER, `OPTIONS` = OPTIONS, `EXTRA` = EXTRA, `DATA_TYPE` = DATA_TYPE, `ONLY_PYRAMIDS` = ONLY_PYRAMIDS, `DIR_FOR_ROW` = DIR_FOR_ROW, `OUTPUT` = OUTPUT, `OUTPUT_CSV` = OUTPUT_CSV,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}