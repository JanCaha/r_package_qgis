##' QGIS Algorithm provided by SAGA Local minima and maxima (saga:localminimaandmaxima)
##'
##' @title QGIS algorithm Local minima and maxima
##'
##' @param GRID `raster` - Grid. Path to a raster layer.
##' @param MINIMA `vectorDestination` - Minima. Path for new vector layer.
##' @param MAXIMA `vectorDestination` - Maxima. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * MAXIMA - outputVector - Maxima
##' * MINIMA - outputVector - Minima
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

saga_localminimaandmaxima <- function(GRID = qgisprocess:::qgis_default_value(), MINIMA = qgisprocess:::qgis_default_value(), MAXIMA = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:localminimaandmaxima")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:localminimaandmaxima", `GRID` = GRID, `MINIMA` = MINIMA, `MAXIMA` = MAXIMA,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:localminimaandmaxima", `GRID` = GRID, `MINIMA` = MINIMA, `MAXIMA` = MAXIMA,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "MAXIMA")
  }
}