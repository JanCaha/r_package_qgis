##' QGIS Algorithm provided by GDAL RGB to PCT (gdal:rgbtopct)
##'
##' @title QGIS algorithm RGB to PCT
##'
##' @param INPUT `raster` - Input layer. Path to a raster layer.
##' @param NCOLORS `number` - Number of colors. A numeric value.
##' @param OUTPUT `rasterDestination` - RGB to PCT. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - RGB to PCT
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

gdal_rgbtopct <- function(INPUT = qgisprocess::qgis_default_value(), NCOLORS = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("gdal:rgbtopct",`INPUT` = INPUT, `NCOLORS` = NCOLORS, `OUTPUT` = OUTPUT,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
}
}