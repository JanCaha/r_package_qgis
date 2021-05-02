##' QGIS Algorithm provided by QGIS TIN interpolation (qgis:tininterpolation)
##'
##' @title QGIS algorithm TIN interpolation
##'
##' @param INTERPOLATION_DATA `idw_interpolation_data` - Input layer(s). .
##' @param METHOD `enum`  of `("Linear", "Clough-Toucher (cubic)")` - Interpolation method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param EXTENT `extent` - Extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param PIXEL_SIZE `number` - Output raster size. A numeric value.
##' @param OUTPUT `rasterDestination` - Interpolated. Path for new raster layer.
##' @param TRIANGULATION `sink` - Triangulation. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Interpolated
##' * TRIANGULATION - outputVector - Triangulation
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_tininterpolation <- function(INTERPOLATION_DATA = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(), EXTENT = qgisprocess::qgis_default_value(), PIXEL_SIZE = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(), TRIANGULATION = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("qgis:tininterpolation")
  output <- qgisprocess::qgis_run_algorithm("qgis:tininterpolation",`INTERPOLATION_DATA` = INTERPOLATION_DATA, `METHOD` = METHOD, `EXTENT` = EXTENT, `PIXEL_SIZE` = PIXEL_SIZE, `OUTPUT` = OUTPUT, `TRIANGULATION` = TRIANGULATION,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}