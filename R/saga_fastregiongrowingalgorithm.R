##' QGIS Algorithm provided by SAGA Fast region growing algorithm (saga:fastregiongrowingalgorithm)
##'
##' @title QGIS algorithm Fast region growing algorithm
##'
##' @param INPUT `multilayer` - Input Grids. .
##' @param START `raster` - Seeds Grid. Path to a raster layer.
##' @param REP `raster` - Smooth Rep. Path to a raster layer.
##' @param RESULT `rasterDestination` - Segmente. Path for new raster layer.
##' @param MEAN `rasterDestination` - Mean. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * MEAN - outputRaster - Mean
##' * RESULT - outputRaster - Segmente
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

saga_fastregiongrowingalgorithm <- function(INPUT = qgisprocess:::qgis_default_value(), START = qgisprocess:::qgis_default_value(), REP = qgisprocess:::qgis_default_value(), RESULT = qgisprocess:::qgis_default_value(), MEAN = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:fastregiongrowingalgorithm")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:fastregiongrowingalgorithm", `INPUT` = INPUT, `START` = START, `REP` = REP, `RESULT` = RESULT, `MEAN` = MEAN,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:fastregiongrowingalgorithm", `INPUT` = INPUT, `START` = START, `REP` = REP, `RESULT` = RESULT, `MEAN` = MEAN,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "MEAN")
  }
}