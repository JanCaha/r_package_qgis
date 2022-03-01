##' QGIS Algorithm provided by SAGA Smoothing (vigra) (saga:smoothingvigra)
##'
##' @title QGIS algorithm Smoothing (vigra)
##'
##' @param INPUT `raster` - Input. Path to a raster layer.
##' @param OUTPUT `rasterDestination` - Output. Path for new raster layer.
##' @param TYPE `enum`  of `("[0] exponential", "[1] nonlinear", "[2] gaussian")` - Type of smoothing. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SCALE `number` - Size of smoothing filter. A numeric value.
##' @param EDGE `number` - Edge threshold for nonlinear smoothing. A numeric value.
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

saga_smoothingvigra <- function(INPUT = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(), TYPE = qgisprocess::qgis_default_value(), SCALE = qgisprocess::qgis_default_value(), EDGE = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:smoothingvigra")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:smoothingvigra", `INPUT` = INPUT, `OUTPUT` = OUTPUT, `TYPE` = TYPE, `SCALE` = SCALE, `EDGE` = EDGE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:smoothingvigra", `INPUT` = INPUT, `OUTPUT` = OUTPUT, `TYPE` = TYPE, `SCALE` = SCALE, `EDGE` = EDGE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}