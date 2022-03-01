##' QGIS Algorithm provided by SAGA Morphological filter (opencv) (saga:morphologicalfilteropencv)
##'
##' @title QGIS algorithm Morphological filter (opencv)
##'
##' @param INPUT `raster` - Input. Path to a raster layer.
##' @param OUTPUT `rasterDestination` - Output. Path for new raster layer.
##' @param TYPE `enum`  of `("[0] dilation", "[1] erosion", "[2] opening", "[3] closing", "[4] morpological gradient", "[5] top hat", "[6] black hat")` - Operation. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SHAPE `enum`  of `("[0] ellipse", "[1] rectangle", "[2] cross")` - Element Shape. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param RADIUS `number` - Radius (cells). A numeric value.
##' @param ITERATIONS `number` - Iterations. A numeric value.
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
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_morphologicalfilteropencv <- function(INPUT = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(), TYPE = qgisprocess::qgis_default_value(), SHAPE = qgisprocess::qgis_default_value(), RADIUS = qgisprocess::qgis_default_value(), ITERATIONS = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:morphologicalfilteropencv")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:morphologicalfilteropencv", `INPUT` = INPUT, `OUTPUT` = OUTPUT, `TYPE` = TYPE, `SHAPE` = SHAPE, `RADIUS` = RADIUS, `ITERATIONS` = ITERATIONS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:morphologicalfilteropencv", `INPUT` = INPUT, `OUTPUT` = OUTPUT, `TYPE` = TYPE, `SHAPE` = SHAPE, `RADIUS` = RADIUS, `ITERATIONS` = ITERATIONS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}