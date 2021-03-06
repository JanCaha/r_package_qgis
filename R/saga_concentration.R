##' QGIS Algorithm provided by SAGA Concentration (saga:concentration)
##'
##' @title QGIS algorithm Concentration
##'
##' @param MASK `raster` - Mask. Path to a raster layer.
##' @param GRAD `raster` - Gradient. Path to a raster layer.
##' @param CONC `rasterDestination` - Concentration. Path for new raster layer.
##' @param CONC_IN `number` - Inlet Concentration. A numeric value.
##' @param CONC_OUT `number` - Outlet Concentration. A numeric value.
##' @param CONC_E `number` - Concentration Approximation Threshold. A numeric value.
##' @param GRAD_MIN `number` - Minimum Gradient. A numeric value.
##' @param NEIGHBOURS `enum`  of `("[0] Moore (8)", "[1] Neumann (4)", "[2] Optimised")` - Neighbourhood. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * CONC - outputRaster - Concentration
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_concentration <- function(MASK = qgisprocess::qgis_default_value(), GRAD = qgisprocess::qgis_default_value(), CONC = qgisprocess::qgis_default_value(), CONC_IN = qgisprocess::qgis_default_value(), CONC_OUT = qgisprocess::qgis_default_value(), CONC_E = qgisprocess::qgis_default_value(), GRAD_MIN = qgisprocess::qgis_default_value(), NEIGHBOURS = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:concentration")

  output <- qgisprocess::qgis_run_algorithm("saga:concentration", `MASK` = MASK, `GRAD` = GRAD, `CONC` = CONC, `CONC_IN` = CONC_IN, `CONC_OUT` = CONC_OUT, `CONC_E` = CONC_E, `GRAD_MIN` = GRAD_MIN, `NEIGHBOURS` = NEIGHBOURS,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "CONC")
  }
}