##' QGIS Algorithm provided by GDAL Retile (gdal:retile)
##'
##' @title QGIS algorithm Retile
##'
##' @param INPUT `multilayer` - Input files. .
##' @param TILE_SIZE_X `number` - Tile width. A numeric value.
##' @param TILE_SIZE_Y `number` - Tile height. A numeric value.
##' @param OVERLAP `number` - Overlap in pixels between consecutive tiles. A numeric value.
##' @param LEVELS `number` - Number of pyramids levels to build. A numeric value.
##' @param SOURCE_CRS `crs` - Source coordinate reference system. CRS as an auth ID (e.g. 'EPSG:3111'). CRS as a PROJ4 string (e.g. 'PROJ4:…'). CRS as a WKT string (e.g. 'WKT:…'). Path to a layer. The CRS of the layer is used..
##' @param RESAMPLING `enum`  of `("Nearest Neighbour", "Bilinear", "Cubic", "Cubic Spline", "Lanczos Windowed Sinc")` - Resampling method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DELIMITER `string` - Column delimiter used in the CSV file. String value.
##' @param OPTIONS `string` - Additional creation options. String value.
##' @param EXTRA `string` - Additional command-line parameters. String value.
##' @param DATA_TYPE `enum`  of `("Byte", "Int16", "UInt16", "UInt32", "Int32", "Float32", "Float64", "CInt16", "CInt32", "CFloat32", "CFloat64")` - Output data type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ONLY_PYRAMIDS `boolean` - Build only the pyramids. 1 for true/yes. 0 for false/no.
##' @param DIR_FOR_ROW `boolean` - Use separate directory for each tiles row. 1 for true/yes. 0 for false/no.
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