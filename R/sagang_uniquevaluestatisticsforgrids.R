##' QGIS Algorithm provided by SAGA Next Gen Unique value statistics for grids (sagang:uniquevaluestatisticsforgrids). ---------------- Arguments ----------------  GRIDS: Values 	Argument type:	multilayer MAJORITY: Majority 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer MINORITY: Minority 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer NUNIQUES: Number of Unique Values 	Argument type:	rasterDestination 	Acceptable values: 		- Path for new raster layer
##'
##' @title QGIS algorithm - Unique value statistics for grids
##'
##' @param GRIDS `multilayer` - Values. .
##' @param MAJORITY `rasterDestination` - Majority. Path for new raster layer.
##' @param MINORITY `rasterDestination` - Minority. Path for new raster layer.
##' @param NUNIQUES `rasterDestination` - Number of Unique Values. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * MAJORITY - outputRaster - Majority
##' * MINORITY - outputRaster - Minority
##' * NUNIQUES - outputRaster - Number of Unique Values
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_uniquevaluestatisticsforgrids <- function(GRIDS = qgisprocess:::qgis_default_value(), MAJORITY = qgisprocess:::qgis_default_value(), MINORITY = qgisprocess:::qgis_default_value(), NUNIQUES = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:uniquevaluestatisticsforgrids")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:uniquevaluestatisticsforgrids", `GRIDS` = GRIDS, `MAJORITY` = MAJORITY, `MINORITY` = MINORITY, `NUNIQUES` = NUNIQUES,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:uniquevaluestatisticsforgrids", `GRIDS` = GRIDS, `MAJORITY` = MAJORITY, `MINORITY` = MINORITY, `NUNIQUES` = NUNIQUES,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "MAJORITY")
  }
}