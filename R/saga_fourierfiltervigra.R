##' QGIS Algorithm provided by SAGA Fourier filter (vigra) (saga:fourierfiltervigra)
##'
##' @title QGIS algorithm Fourier filter (vigra)
##'
##' @param INPUT `raster` - Input. Path to a raster layer.
##' @param OUTPUT `rasterDestination` - Output. Path for new raster layer.
##' @param SCALE `number` - Size of smoothing filter. A numeric value.
##' @param POWER `number` - Power. A numeric value.
##' @param RANGE_MIN `number` - Range (Min). A numeric value.
##' @param RANGE_MAX `number` - Range (Max). A numeric value.
##' @param FILTER `enum`  of `("[0] gaussian", "[1] power of distance", "[2] include range", "[3] exclude range")` - Filter. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
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

saga_fourierfiltervigra <- function(INPUT = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(), SCALE = qgisprocess::qgis_default_value(), POWER = qgisprocess::qgis_default_value(), RANGE_MIN = qgisprocess::qgis_default_value(), RANGE_MAX = qgisprocess::qgis_default_value(), FILTER = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:fourierfiltervigra")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:fourierfiltervigra", `INPUT` = INPUT, `OUTPUT` = OUTPUT, `SCALE` = SCALE, `POWER` = POWER, `RANGE_MIN` = RANGE_MIN, `RANGE_MAX` = RANGE_MAX, `FILTER` = FILTER,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:fourierfiltervigra", `INPUT` = INPUT, `OUTPUT` = OUTPUT, `SCALE` = SCALE, `POWER` = POWER, `RANGE_MIN` = RANGE_MIN, `RANGE_MAX` = RANGE_MAX, `FILTER` = FILTER,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}