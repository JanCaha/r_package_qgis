##' QGIS Algorithm provided by SAGA Next Gen Longitudinal grid statistics (sagang:longitudinalgridstatistics). ---------------- Arguments ----------------  GRID: Grid 	Argument type:	raster 	Acceptable values: 		- Path to a raster layer STATS: Latitudinal Statistics 	Argument type:	vectorDestination 	Acceptable values: 		- Path for new vector layer
##'
##' @title QGIS algorithm - Longitudinal grid statistics
##'
##' @param GRID `raster` - Grid. Path to a raster layer.
##' @param STATS `vectorDestination` - Latitudinal Statistics. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * STATS - outputVector - Latitudinal Statistics
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

sagang_longitudinalgridstatistics <- function(GRID = qgisprocess:::qgis_default_value(), STATS = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:longitudinalgridstatistics")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:longitudinalgridstatistics", `GRID` = GRID, `STATS` = STATS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:longitudinalgridstatistics", `GRID` = GRID, `STATS` = STATS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "STATS")
  }
}