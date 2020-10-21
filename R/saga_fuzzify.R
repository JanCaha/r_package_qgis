##' QGIS Algorithm provided by SAGA Fuzzify (saga:fuzzify)
##'
##' @title QGIS algorithm Fuzzify
##'
##' @param INPUT `raster` - Grid. Path to a raster layer.
##' @param A `number` - A. A numeric value.
##' @param B `number` - B. A numeric value.
##' @param C `number` - C. A numeric value.
##' @param D `number` - D. A numeric value.
##' @param TYPE `enum`  of `("[0] linear", "[1] sigmoidal", "[2] j-shaped")` - Membership Function Type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param AUTOFIT `boolean` - Adjust to Grid. 1 for true/yes. 0 for false/no.
##' @param OUTPUT `rasterDestination` - Fuzzified Grid. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Fuzzified Grid
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_fuzzify <- function(INPUT = qgisprocess::qgis_default_value(), A = qgisprocess::qgis_default_value(), B = qgisprocess::qgis_default_value(), C = qgisprocess::qgis_default_value(), D = qgisprocess::qgis_default_value(), TYPE = qgisprocess::qgis_default_value(), AUTOFIT = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:fuzzify",`INPUT` = INPUT, `A` = A, `B` = B, `C` = C, `D` = D, `TYPE` = TYPE, `AUTOFIT` = AUTOFIT, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}