##' QGIS Algorithm provided by SAGA Sieving classes (saga:sievingclasses)
##'
##' @title QGIS algorithm Sieving classes
##'
##' @param INPUT `raster` - Classes. Path to a raster layer.
##' @param OUTPUT `rasterDestination` - Sieved Classes. Path for new raster layer.
##' @param MODE `enum`  of `("[0] Neumann", "[1] Moore")` - Neighbourhood. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param THRESHOLD `number` - Minimum Threshold. A numeric value.
##' @param ALL `enum`  of `("[0] single class", "[1] all classes")` - Class Selection. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param CLASS `number` - Class Identifier. A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Sieved Classes
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_sievingclasses <- function(INPUT = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(), MODE = qgisprocess::qgis_default_value(), THRESHOLD = qgisprocess::qgis_default_value(), ALL = qgisprocess::qgis_default_value(), CLASS = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:sievingclasses")
  output <- qgisprocess::qgis_run_algorithm("saga:sievingclasses",`INPUT` = INPUT, `OUTPUT` = OUTPUT, `MODE` = MODE, `THRESHOLD` = THRESHOLD, `ALL` = ALL, `CLASS` = CLASS,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}