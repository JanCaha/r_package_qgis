##' QGIS Algorithm provided by SAGA Stream power index (saga:streampowerindex)
##'
##' @title QGIS algorithm Stream power index
##'
##' @param SLOPE `raster` - Slope. Path to a raster layer.
##' @param AREA `raster` - Catchment Area. Path to a raster layer.
##' @param CONV `enum`  of `("[0] no conversion (areas already given as specific catchment area)", "[1] 1 / cell size (pseudo specific catchment area)")` - Area Conversion. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SPI `rasterDestination` - Stream Power Index. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * SPI - outputRaster - Stream Power Index
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_streampowerindex <- function(SLOPE = qgisprocess::qgis_default_value(), AREA = qgisprocess::qgis_default_value(), CONV = qgisprocess::qgis_default_value(), SPI = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:streampowerindex",`SLOPE` = SLOPE, `AREA` = AREA, `CONV` = CONV, `SPI` = SPI,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "SPI")
}
}