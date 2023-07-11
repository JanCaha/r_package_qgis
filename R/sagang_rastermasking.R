##' QGIS Algorithm provided by SAGA Next Gen Raster masking (sagang:rastermasking). ---------------- Arguments ----------------  LIST: List Processing 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression GRID: Grid 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer MASKED: Masked Grid 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer GRIDS: Grids 	Argument type:	multilayer GRIDS_CREATE: Create Copies 	Default value:	false 	Argument type:	boolean 	Acceptable values: 		- 1 for true/yes 		- 0 for false/no 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression GRIDS_MASKED: Masked Grids 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer MASK: Mask 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer NODATA: Mask Cells 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) no-data cells 		- 1: (1) data cells 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3'
##'
##' @title QGIS algorithm - Raster masking
##'
##' @param LIST `boolean` - List Processing. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param GRID `raster` - Grid. Path to a raster layer.
##' @param MASKED `rasterDestination` - Masked Grid. Path for new raster layer.
##' @param GRIDS `multilayer` - Grids. .
##' @param GRIDS_CREATE `boolean` - Create Copies. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param GRIDS_MASKED `rasterDestination` - Masked Grids. Path for new raster layer.
##' @param MASK `raster` - Mask. Path to a raster layer.
##' @param NODATA `enum`  of `("(0) no-data cells", "(1) data cells")` - Mask Cells. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * GRIDS_MASKED - outputRaster - Masked Grids
##' * MASKED - outputRaster - Masked Grid
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_rastermasking <- function(LIST = qgisprocess:::qgis_default_value(), GRID = qgisprocess:::qgis_default_value(), MASKED = qgisprocess:::qgis_default_value(), GRIDS = qgisprocess:::qgis_default_value(), GRIDS_CREATE = qgisprocess:::qgis_default_value(), GRIDS_MASKED = qgisprocess:::qgis_default_value(), MASK = qgisprocess:::qgis_default_value(), NODATA = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:rastermasking")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:rastermasking", `LIST` = LIST, `GRID` = GRID, `MASKED` = MASKED, `GRIDS` = GRIDS, `GRIDS_CREATE` = GRIDS_CREATE, `GRIDS_MASKED` = GRIDS_MASKED, `MASK` = MASK, `NODATA` = NODATA,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:rastermasking", `LIST` = LIST, `GRID` = GRID, `MASKED` = MASKED, `GRIDS` = GRIDS, `GRIDS_CREATE` = GRIDS_CREATE, `GRIDS_MASKED` = GRIDS_MASKED, `MASK` = MASK, `NODATA` = NODATA,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "GRIDS_MASKED")
  }
}