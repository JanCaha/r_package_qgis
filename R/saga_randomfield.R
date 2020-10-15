##' QGIS Algorithm provided by SAGA Random field (saga:randomfield)
##'
##' @title QGIS algorithm Random field
##'
##' @param METHOD `enum`  of `("[0] Uniform", "[1] Gaussian")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param RANGE_MIN `number` - Range Min. A numeric value.
##' @param RANGE_MAX `number` - Range Max. A numeric value.
##' @param MEAN `number` - Arithmetic Mean. A numeric value.
##' @param STDDEV `number` - Standard Deviation. A numeric value.
##' @param USER_XMIN_USER_XMAX_USER_YMIN_USER_YMAX `extent` - Output extent. A comma delimited string of x min, x max, y min, y max. E.g. '4,10,101,105'. Path to a layer. The extent of the layer is used.. Original algorithm parameter name: {name}.
##' @param USER_SIZE `number` - Cellsize. A numeric value.
##' @param USER_FITS `enum`  of `("[0] nodes", "[1] cells")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param OUT_GRID `rasterDestination` - Random Field. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUT_GRID - outputRaster - Random Field
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_randomfield <- function(METHOD = qgisprocess::qgis_default_value(), RANGE_MIN = qgisprocess::qgis_default_value(), RANGE_MAX = qgisprocess::qgis_default_value(), MEAN = qgisprocess::qgis_default_value(), STDDEV = qgisprocess::qgis_default_value(), USER_XMIN_USER_XMAX_USER_YMIN_USER_YMAX = qgisprocess::qgis_default_value(), USER_SIZE = qgisprocess::qgis_default_value(), USER_FITS = qgisprocess::qgis_default_value(), OUT_GRID = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:randomfield",`METHOD` = METHOD, `RANGE_MIN` = RANGE_MIN, `RANGE_MAX` = RANGE_MAX, `MEAN` = MEAN, `STDDEV` = STDDEV, `USER_XMIN USER_XMAX USER_YMIN USER_YMAX` = USER_XMIN_USER_XMAX_USER_YMIN_USER_YMAX, `USER_SIZE` = USER_SIZE, `USER_FITS` = USER_FITS, `OUT_GRID` = OUT_GRID,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUT_GRID")
}
}