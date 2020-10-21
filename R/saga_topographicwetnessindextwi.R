##' QGIS Algorithm provided by SAGA Topographic wetness index (twi) (saga:topographicwetnessindextwi)
##'
##' @title QGIS algorithm Topographic wetness index (twi)
##'
##' @param SLOPE `raster` - Slope. Path to a raster layer.
##' @param AREA `raster` - Catchment Area. Path to a raster layer.
##' @param TRANS `raster` - Transmissivity. Path to a raster layer.
##' @param CONV `enum`  of `("[0] no conversion (areas already given as specific catchment area)", "[1] 1 / cell size (pseudo specific catchment area)")` - Area Conversion. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param METHOD `enum`  of `("[0] Standard", "[1] TOPMODEL")` - Method (TWI). Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param TWI `rasterDestination` - Topographic Wetness Index. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * TWI - outputRaster - Topographic Wetness Index
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_topographicwetnessindextwi <- function(SLOPE = qgisprocess::qgis_default_value(), AREA = qgisprocess::qgis_default_value(), TRANS = qgisprocess::qgis_default_value(), CONV = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(), TWI = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:topographicwetnessindextwi",`SLOPE` = SLOPE, `AREA` = AREA, `TRANS` = TRANS, `CONV` = CONV, `METHOD` = METHOD, `TWI` = TWI,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "TWI")
  }
}