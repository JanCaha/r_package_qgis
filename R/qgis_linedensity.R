##' QGIS Algorithm provided by QGIS (native c++) Line density (native:linedensity)
##'
##' @title QGIS algorithm Line density
##'
##' @param INPUT `source` - Input line layer. Path to a vector layer.
##' @param WEIGHT `field` - Weight field . The name of an existing field. ; delimited list of existing field names.
##' @param RADIUS `distance` - Search radius. A numeric value.
##' @param PIXEL_SIZE `distance` - Pixel size. A numeric value.
##' @param OUTPUT `rasterDestination` - Line density raster. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Line density raster
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_linedensity <- function(INPUT = qgisprocess::qgis_default_value(), WEIGHT = qgisprocess::qgis_default_value(), RADIUS = qgisprocess::qgis_default_value(), PIXEL_SIZE = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("native:linedensity")

  output <- qgisprocess::qgis_run_algorithm("native:linedensity", `INPUT` = INPUT, `WEIGHT` = WEIGHT, `RADIUS` = RADIUS, `PIXEL_SIZE` = PIXEL_SIZE, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}