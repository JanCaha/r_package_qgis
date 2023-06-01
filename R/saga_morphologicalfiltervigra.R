##' QGIS Algorithm provided by SAGA Morphological filter (vigra) (saga:morphologicalfiltervigra)
##'
##' @title QGIS algorithm Morphological filter (vigra)
##'
##' @param INPUT `raster` - Input. Path to a raster layer.
##' @param OUTPUT `rasterDestination` - Output. Path for new raster layer.
##' @param TYPE `enum`  of `("[0] Dilation", "[1] Erosion", "[2] Median", "[3] User defined rank")` - Operation. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param RADIUS `number` - Radius (cells). A numeric value.
##' @param RANK `number` - User defined rank. A numeric value.
##' @param RESCALE `boolean` - Rescale Values (0-255). 1 for true/yes. 0 for false/no.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Output
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

saga_morphologicalfiltervigra <- function(INPUT = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(), TYPE = qgisprocess:::qgis_default_value(), RADIUS = qgisprocess:::qgis_default_value(), RANK = qgisprocess:::qgis_default_value(), RESCALE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:morphologicalfiltervigra")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:morphologicalfiltervigra", `INPUT` = INPUT, `OUTPUT` = OUTPUT, `TYPE` = TYPE, `RADIUS` = RADIUS, `RANK` = RANK, `RESCALE` = RESCALE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:morphologicalfiltervigra", `INPUT` = INPUT, `OUTPUT` = OUTPUT, `TYPE` = TYPE, `RADIUS` = RADIUS, `RANK` = RANK, `RESCALE` = RESCALE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}