##' QGIS Algorithm provided by SAGA Add raster values to points (saga:addrastervaluestopoints)
##'
##' @title QGIS algorithm Add raster values to points
##'
##' @param SHAPES `source` - Points. Path to a vector layer.
##' @param GRIDS `multilayer` - Grids. .
##' @param RESAMPLING `enum`  of `("[0] Nearest Neighbor", "[1] Bilinear Interpolation", "[2] Bicubic Spline Interpolation", "[3] B-Spline Interpolation")` - Interpolation. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param RESULT `vectorDestination` - Result. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputVector - Result
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

saga_addrastervaluestopoints <- function(SHAPES = qgisprocess:::qgis_default_value(), GRIDS = qgisprocess:::qgis_default_value(), RESAMPLING = qgisprocess:::qgis_default_value(), RESULT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:addrastervaluestopoints")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:addrastervaluestopoints", `SHAPES` = SHAPES, `GRIDS` = GRIDS, `RESAMPLING` = RESAMPLING, `RESULT` = RESULT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:addrastervaluestopoints", `SHAPES` = SHAPES, `GRIDS` = GRIDS, `RESAMPLING` = RESAMPLING, `RESULT` = RESULT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "RESULT")
  }
}