##' QGIS Algorithm provided by SAGA Next Gen Tiling (sagang:tiling). ---------------- Arguments ----------------  GRID: Grid 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer TILES: Tiles 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer TILES_SAVE: Save Tiles to Disk 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression TILES_PATH: Output Directory 	Default value:	False 	Argument type:	file 	Acceptable values: 		- Path to a file TILES_NAME: Base Name 	Default value:	tile 	Argument type:	string 	Acceptable values: 		- String value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression OVERLAP: Overlapping Cells 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression OVERLAP_SYM: Add Cells 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) symmetric 		- 1: (1) bottom / left 		- 2: (2) top / right 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' METHOD: Tile Size Definition 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) number of grid cells per tile 		- 1: (1) coordinates (offset, range, cell size, tile size) 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' NX: Number of Column Cells 	Default value:	100 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression NY: Number of Row Cells 	Default value:	100 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DCELL: Cell Size 	Default value:	1 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DX: Tile Size (X) 	Default value:	100 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression DY: Tile Size (Y) 	Default value:	100 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Tiling
##'
##' @param GRID `raster` - Grid. Path to a raster layer.
##' @param TILES `rasterDestination` - Tiles. Path for new raster layer.
##' @param TILES_SAVE `boolean` - Save Tiles to Disk. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TILES_PATH `file` - Output Directory. Path to a file.
##' @param TILES_NAME `string` - Base Name. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OVERLAP `number` - Overlapping Cells. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OVERLAP_SYM `enum`  of `("(0) symmetric", "(1) bottom / left", "(2) top / right")` - Add Cells. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param METHOD `enum`  of `("(0) number of grid cells per tile", "(1) coordinates (offset, range, cell size, tile size)")` - Tile Size Definition. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param NX `number` - Number of Column Cells. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param NY `number` - Number of Row Cells. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DCELL `number` - Cell Size. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DX `number` - Tile Size (X). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DY `number` - Tile Size (Y). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * TILES - outputRaster - Tiles
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_tiling <- function(GRID = qgisprocess:::qgis_default_value(), TILES = qgisprocess:::qgis_default_value(), TILES_SAVE = qgisprocess:::qgis_default_value(), TILES_PATH = qgisprocess:::qgis_default_value(), TILES_NAME = qgisprocess:::qgis_default_value(), OVERLAP = qgisprocess:::qgis_default_value(), OVERLAP_SYM = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), NX = qgisprocess:::qgis_default_value(), NY = qgisprocess:::qgis_default_value(), DCELL = qgisprocess:::qgis_default_value(), DX = qgisprocess:::qgis_default_value(), DY = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:tiling")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:tiling", `GRID` = GRID, `TILES` = TILES, `TILES_SAVE` = TILES_SAVE, `TILES_PATH` = TILES_PATH, `TILES_NAME` = TILES_NAME, `OVERLAP` = OVERLAP, `OVERLAP_SYM` = OVERLAP_SYM, `METHOD` = METHOD, `NX` = NX, `NY` = NY, `DCELL` = DCELL, `DX` = DX, `DY` = DY,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:tiling", `GRID` = GRID, `TILES` = TILES, `TILES_SAVE` = TILES_SAVE, `TILES_PATH` = TILES_PATH, `TILES_NAME` = TILES_NAME, `OVERLAP` = OVERLAP, `OVERLAP_SYM` = OVERLAP_SYM, `METHOD` = METHOD, `NX` = NX, `NY` = NY, `DCELL` = DCELL, `DX` = DX, `DY` = DY,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "TILES")
  }
}