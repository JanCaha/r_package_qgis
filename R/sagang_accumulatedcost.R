##' QGIS Algorithm provided by SAGA Next Gen Accumulated cost (sagang:accumulatedcost). ---------------- Arguments ----------------  DEST_TYPE: Input Type of Destinations 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) Point 		- 1: (1) Grid 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' DEST_POINTS: Destinations 	Argument type:	source 	Acceptable values: 		- Path to a vector layer DEST_GRID: Destinations 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer COST: Local Cost 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer DIR_MAXCOST: Direction of Maximum Cost (optional) 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer DIR_UNIT: Units of Direction 	Default value:	0 	Argument type:	enum 	Available values: 		- 0: (0) radians 		- 1: (1) degree 	Acceptable values: 		- Number of selected option, e.g. '1' 		- Comma separated list of options, e.g. '1,3' DIR_K: K Factor 	Default value:	2 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression ACCUMULATED: Accumulated Cost 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer ALLOCATION: Allocation 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer THRESHOLD: Threshold for different route 	Default value:	0 	Argument type:	number 	Acceptable values: 		- A numeric value 		- field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field 		- expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression
##'
##' @title QGIS algorithm - Accumulated cost
##'
##' @param DEST_TYPE `enum`  of `("(0) Point", "(1) Grid")` - Input Type of Destinations. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DEST_POINTS `source` - Destinations. Path to a vector layer.
##' @param DEST_GRID `raster` - Destinations. Path to a raster layer.
##' @param COST `raster` - Local Cost. Path to a raster layer.
##' @param DIR_MAXCOST `raster` - Direction of Maximum Cost. Path to a raster layer.
##' @param DIR_UNIT `enum`  of `("(0) radians", "(1) degree")` - Units of Direction. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DIR_K `number` - K Factor. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ACCUMULATED `rasterDestination` - Accumulated Cost. Path for new raster layer.
##' @param ALLOCATION `rasterDestination` - Allocation. Path for new raster layer.
##' @param THRESHOLD `number` - Threshold for different route. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * ACCUMULATED - outputRaster - Accumulated Cost
##' * ALLOCATION - outputRaster - Allocation
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_accumulatedcost <- function(DEST_TYPE = qgisprocess:::qgis_default_value(), DEST_POINTS = qgisprocess:::qgis_default_value(), DEST_GRID = qgisprocess:::qgis_default_value(), COST = qgisprocess:::qgis_default_value(), DIR_MAXCOST = qgisprocess:::qgis_default_value(), DIR_UNIT = qgisprocess:::qgis_default_value(), DIR_K = qgisprocess:::qgis_default_value(), ACCUMULATED = qgisprocess:::qgis_default_value(), ALLOCATION = qgisprocess:::qgis_default_value(), THRESHOLD = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:accumulatedcost")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:accumulatedcost", `DEST_TYPE` = DEST_TYPE, `DEST_POINTS` = DEST_POINTS, `DEST_GRID` = DEST_GRID, `COST` = COST, `DIR_MAXCOST` = DIR_MAXCOST, `DIR_UNIT` = DIR_UNIT, `DIR_K` = DIR_K, `ACCUMULATED` = ACCUMULATED, `ALLOCATION` = ALLOCATION, `THRESHOLD` = THRESHOLD,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:accumulatedcost", `DEST_TYPE` = DEST_TYPE, `DEST_POINTS` = DEST_POINTS, `DEST_GRID` = DEST_GRID, `COST` = COST, `DIR_MAXCOST` = DIR_MAXCOST, `DIR_UNIT` = DIR_UNIT, `DIR_K` = DIR_K, `ACCUMULATED` = ACCUMULATED, `ALLOCATION` = ALLOCATION, `THRESHOLD` = THRESHOLD,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "ACCUMULATED")
  }
}