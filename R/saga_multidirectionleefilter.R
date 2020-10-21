##' QGIS Algorithm provided by SAGA Multi direction lee filter (saga:multidirectionleefilter)
##'
##' @title QGIS algorithm Multi direction lee filter
##'
##' @param INPUT `raster` - Grid. Path to a raster layer.
##' @param NOISE_ABS `number` - Estimated Noise (absolute). A numeric value.
##' @param NOISE_REL `number` - Estimated Noise (relative). A numeric value.
##' @param WEIGHTED `boolean` - Weighted. 1 for true/yes. 0 for false/no.
##' @param METHOD `enum`  of `("[0] noise variance given as absolute value", "[1] noise variance given relative to mean standard deviation", "[2] original calculation (Ringeler)")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param RESULT `rasterDestination` - Filtered Grid. Path for new raster layer.
##' @param STDDEV `rasterDestination` - Minimum Standard Deviation. Path for new raster layer.
##' @param DIR `rasterDestination` - Direction of Minimum Standard Deviation. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * RESULT - outputRaster - Filtered Grid
##' * STDDEV - outputRaster - Minimum Standard Deviation
##' * DIR - outputRaster - Direction of Minimum Standard Deviation
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_multidirectionleefilter <- function(INPUT = qgisprocess::qgis_default_value(), NOISE_ABS = qgisprocess::qgis_default_value(), NOISE_REL = qgisprocess::qgis_default_value(), WEIGHTED = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(), RESULT = qgisprocess::qgis_default_value(), STDDEV = qgisprocess::qgis_default_value(), DIR = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:multidirectionleefilter",`INPUT` = INPUT, `NOISE_ABS` = NOISE_ABS, `NOISE_REL` = NOISE_REL, `WEIGHTED` = WEIGHTED, `METHOD` = METHOD, `RESULT` = RESULT, `STDDEV` = STDDEV, `DIR` = DIR,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "RESULT")
  }
}