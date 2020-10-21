##' QGIS Algorithm provided by SAGA Burn stream network into dem (saga:burnstreamnetworkintodem)
##'
##' @title QGIS algorithm Burn stream network into dem
##'
##' @param DEM `raster` - DEM. Path to a raster layer.
##' @param STREAM `raster` - Streams. Path to a raster layer.
##' @param FLOWDIR `raster` - Flow direction. Path to a raster layer.
##' @param METHOD `enum`  of `("[0] simply decrease cell's value by epsilon", "[1] lower cell's value to neighbours minimum value minus epsilon", "[2] trace stream network downstream")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param EPSILON `number` - Epsilon. A numeric value.
##' @param BURN `rasterDestination` - Processed DEM. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * BURN - outputRaster - Processed DEM
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_burnstreamnetworkintodem <- function(DEM = qgisprocess::qgis_default_value(), STREAM = qgisprocess::qgis_default_value(), FLOWDIR = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(), EPSILON = qgisprocess::qgis_default_value(), BURN = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:burnstreamnetworkintodem",`DEM` = DEM, `STREAM` = STREAM, `FLOWDIR` = FLOWDIR, `METHOD` = METHOD, `EPSILON` = EPSILON, `BURN` = BURN,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "BURN")
  }
}