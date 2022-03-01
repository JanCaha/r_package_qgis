##' QGIS Algorithm provided by SAGA Layer of extreme value (saga:layerofextremevalue)
##'
##' @title QGIS algorithm Layer of extreme value
##'
##' @param GRIDS `multilayer` - Grids. .
##' @param CRITERIA `enum`  of `("[0] Maximum", "[1] Minimum")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param RESULT `rasterDestination` - Result. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputRaster - Result
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_layerofextremevalue <- function(GRIDS = qgisprocess::qgis_default_value(), CRITERIA = qgisprocess::qgis_default_value(), RESULT = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:layerofextremevalue")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:layerofextremevalue", `GRIDS` = GRIDS, `CRITERIA` = CRITERIA, `RESULT` = RESULT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:layerofextremevalue", `GRIDS` = GRIDS, `CRITERIA` = CRITERIA, `RESULT` = RESULT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "RESULT")
  }
}