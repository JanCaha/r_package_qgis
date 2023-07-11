##' QGIS Algorithm provided by SAGA Next Gen Get grid from virtual point cloud (sagang:getgridfromvirtualpointcloud). ---------------- Arguments ----------------  FILENAME: Filename 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file GRID_OUT: Grid 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer FILEPATH: Optional Output Filepath 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file ATTR_FIELD_GRID: Attribute Field to Grid 	Default value:	3 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression CELL_SIZE: Cellsize 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression GRID_SYSTEM_FIT: Grid System Fit 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) nodes 		- 1: (1) cells 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' METHOD: Aggregation 	Default value:	1 	Argument type:	enum 	Available values: 		- 0: (0) lowest 		- 1: (1) highest 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' CONSTRAIN_QUERY: Constrain Query 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression ATTR_FIELD: Attribute Field 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression AOI_SHP: Shape (optional) 	Argument type:	source 	Acceptable values: 		- Path to a vector layer FIELD_TILENAME: Tilename 	Argument type:	field 	Acceptable values: 		- The name of an existing field 		- ; delimited list of existing field names AOI_GRID: Grid (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer AOI_ADD_OVERLAP: Add Overlap 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression OVERLAP: Overlap 	Default value:	50 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Get grid from virtual point cloud
##'
##' @param FILENAME `file` - Filename. Path to a file.
##' @param GRID_OUT `rasterDestination` - Grid. Path for new raster layer.
##' @param FILEPATH `file` - Optional Output Filepath. Path to a file.
##' @param ATTR_FIELD_GRID `number` - Attribute Field to Grid. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param CELL_SIZE `number` - Cellsize. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param GRID_SYSTEM_FIT `enum`  of `("(0) nodes", "(1) cells")` - Grid System Fit. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param METHOD `enum`  of `("(0) lowest", "(1) highest")` - Aggregation. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param CONSTRAIN_QUERY `boolean` - Constrain Query. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ATTR_FIELD `number` - Attribute Field. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param AOI_SHP `source` - Shape. Path to a vector layer.
##' @param FIELD_TILENAME `field` - Tilename. The name of an existing field. ; delimited list of existing field names.
##' @param AOI_GRID `raster` - Grid. Path to a raster layer.
##' @param AOI_ADD_OVERLAP `boolean` - Add Overlap. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OVERLAP `number` - Overlap. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * GRID_OUT - outputRaster - Grid
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_getgridfromvirtualpointcloud <- function(FILENAME = qgisprocess:::qgis_default_value(), GRID_OUT = qgisprocess:::qgis_default_value(), FILEPATH = qgisprocess:::qgis_default_value(), ATTR_FIELD_GRID = qgisprocess:::qgis_default_value(), CELL_SIZE = qgisprocess:::qgis_default_value(), GRID_SYSTEM_FIT = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), CONSTRAIN_QUERY = qgisprocess:::qgis_default_value(), ATTR_FIELD = qgisprocess:::qgis_default_value(), AOI_SHP = qgisprocess:::qgis_default_value(), FIELD_TILENAME = qgisprocess:::qgis_default_value(), AOI_GRID = qgisprocess:::qgis_default_value(), AOI_ADD_OVERLAP = qgisprocess:::qgis_default_value(), OVERLAP = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:getgridfromvirtualpointcloud")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:getgridfromvirtualpointcloud", `FILENAME` = FILENAME, `GRID_OUT` = GRID_OUT, `FILEPATH` = FILEPATH, `ATTR_FIELD_GRID` = ATTR_FIELD_GRID, `CELL_SIZE` = CELL_SIZE, `GRID_SYSTEM_FIT` = GRID_SYSTEM_FIT, `METHOD` = METHOD, `CONSTRAIN_QUERY` = CONSTRAIN_QUERY, `ATTR_FIELD` = ATTR_FIELD, `AOI_SHP` = AOI_SHP, `FIELD_TILENAME` = FIELD_TILENAME, `AOI_GRID` = AOI_GRID, `AOI_ADD_OVERLAP` = AOI_ADD_OVERLAP, `OVERLAP` = OVERLAP,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:getgridfromvirtualpointcloud", `FILENAME` = FILENAME, `GRID_OUT` = GRID_OUT, `FILEPATH` = FILEPATH, `ATTR_FIELD_GRID` = ATTR_FIELD_GRID, `CELL_SIZE` = CELL_SIZE, `GRID_SYSTEM_FIT` = GRID_SYSTEM_FIT, `METHOD` = METHOD, `CONSTRAIN_QUERY` = CONSTRAIN_QUERY, `ATTR_FIELD` = ATTR_FIELD, `AOI_SHP` = AOI_SHP, `FIELD_TILENAME` = FIELD_TILENAME, `AOI_GRID` = AOI_GRID, `AOI_ADD_OVERLAP` = AOI_ADD_OVERLAP, `OVERLAP` = OVERLAP,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "GRID_OUT")
  }
}