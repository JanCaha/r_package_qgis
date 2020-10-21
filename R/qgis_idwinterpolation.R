##' QGIS Algorithm provided by QGIS IDW interpolation (qgis:idwinterpolation)
##'
##' @title QGIS algorithm IDW interpolation
##'
##' @param INTERPOLATION_DATA `idw_interpolation_data` - Input layer(s). .
##' @param DISTANCE_COEFFICIENT `number` - Distance coefficient P. A numeric value.
##' @param EXTENT `extent` - Extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used..
##' @param PIXEL_SIZE `number` - Output raster size. A numeric value.
##' @param OUTPUT `rasterDestination` - Interpolated. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Interpolated
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_idwinterpolation <- function(INTERPOLATION_DATA = qgisprocess::qgis_default_value(), DISTANCE_COEFFICIENT = qgisprocess::qgis_default_value(), EXTENT = qgisprocess::qgis_default_value(), PIXEL_SIZE = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("qgis:idwinterpolation",`INTERPOLATION_DATA` = INTERPOLATION_DATA, `DISTANCE_COEFFICIENT` = DISTANCE_COEFFICIENT, `EXTENT` = EXTENT, `PIXEL_SIZE` = PIXEL_SIZE, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}