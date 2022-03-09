##' QGIS Algorithm provided by SAGA Ls factor (saga:lsfactor)
##'
##' @title QGIS algorithm Ls factor
##'
##' @param SLOPE `raster` - Slope. Path to a raster layer.
##' @param AREA `raster` - Catchment Area. Path to a raster layer.
##' @param CONV `enum`  of `("[0] no conversion (areas already given as specific catchment area)", "[1] 1 / cell size (specific catchment area)", "[2] square root (catchment length)")` - Area to Length Conversion. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param METHOD `enum`  of `("[0] Moore et al. 1991", "[1] Desmet & Govers 1996", "[2] Boehner & Selige 2006")` - Method (LS). Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param EROSIVITY `number` - Rill/Interrill Erosivity. A numeric value.
##' @param STABILITY `enum`  of `("[0] stable", "[1] instable (thawing)")` - Stability. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param LS `rasterDestination` - LS Factor. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * LS - outputRaster - LS Factor
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_lsfactor <- function(SLOPE = qgisprocess::qgis_default_value(), AREA = qgisprocess::qgis_default_value(), CONV = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(), EROSIVITY = qgisprocess::qgis_default_value(), STABILITY = qgisprocess::qgis_default_value(), LS = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:lsfactor")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:lsfactor", `SLOPE` = SLOPE, `AREA` = AREA, `CONV` = CONV, `METHOD` = METHOD, `EROSIVITY` = EROSIVITY, `STABILITY` = STABILITY, `LS` = LS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:lsfactor", `SLOPE` = SLOPE, `AREA` = AREA, `CONV` = CONV, `METHOD` = METHOD, `EROSIVITY` = EROSIVITY, `STABILITY` = STABILITY, `LS` = LS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "LS")
  }
}