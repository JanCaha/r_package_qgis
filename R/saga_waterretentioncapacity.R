##' QGIS Algorithm provided by SAGA Water retention capacity (saga:waterretentioncapacity)
##'
##' @title QGIS algorithm Water retention capacity
##'
##' @param SHAPES `source` - Plot Holes. Path to a vector layer.
##' @param DEM `raster` - DEM. Path to a raster layer.
##' @param OUTPUT `vectorDestination` - Final Parameters. Path for new vector layer.
##' @param RETENTION `rasterDestination` - Water Retention Capacity. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Final Parameters
##' * RETENTION - outputRaster - Water Retention Capacity
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_waterretentioncapacity <- function(SHAPES = qgisprocess::qgis_default_value(), DEM = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(), RETENTION = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("saga:waterretentioncapacity")

  output <- qgisprocess::qgis_run_algorithm("saga:waterretentioncapacity", `SHAPES` = SHAPES, `DEM` = DEM, `OUTPUT` = OUTPUT, `RETENTION` = RETENTION,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}