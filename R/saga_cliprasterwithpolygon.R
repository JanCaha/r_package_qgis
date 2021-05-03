##' QGIS Algorithm provided by SAGA Clip raster with polygon (saga:cliprasterwithpolygon)
##'
##' @title QGIS algorithm Clip raster with polygon
##'
##' @param INPUT `raster` - Input. Path to a raster layer.
##' @param POLYGONS `source` - Polygons. Path to a vector layer.
##' @param OUTPUT `rasterDestination` - Clipped. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Clipped
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_cliprasterwithpolygon <- function(INPUT = qgisprocess::qgis_default_value(), POLYGONS = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:cliprasterwithpolygon")
  output <- qgisprocess::qgis_run_algorithm("saga:cliprasterwithpolygon",`INPUT` = INPUT, `POLYGONS` = POLYGONS, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}