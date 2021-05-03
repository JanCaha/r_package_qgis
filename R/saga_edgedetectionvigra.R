##' QGIS Algorithm provided by SAGA Edge detection (vigra) (saga:edgedetectionvigra)
##'
##' @title QGIS algorithm Edge detection (vigra)
##'
##' @param INPUT `raster` - Input. Path to a raster layer.
##' @param OUTPUT `rasterDestination` - Edges. Path for new raster layer.
##' @param TYPE `enum`  of `("[0] Canny", "[1] Shen-Castan")` - Detector type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SCALE `number` - Operator scale. A numeric value.
##' @param THRESHOLD `number` - Gradient threshold. A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Edges
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_edgedetectionvigra <- function(INPUT = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(), TYPE = qgisprocess::qgis_default_value(), SCALE = qgisprocess::qgis_default_value(), THRESHOLD = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:edgedetectionvigra")

  output <- qgisprocess::qgis_run_algorithm("saga:edgedetectionvigra", `INPUT` = INPUT, `OUTPUT` = OUTPUT, `TYPE` = TYPE, `SCALE` = SCALE, `THRESHOLD` = THRESHOLD,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}