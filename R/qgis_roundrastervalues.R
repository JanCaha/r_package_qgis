##' QGIS Algorithm provided by QGIS (native c++) Round raster (native:roundrastervalues)
##'
##' @title QGIS algorithm Round raster
##'
##' @param INPUT `raster` - Input raster. Path to a raster layer.
##' @param BAND `band` - Band number. Integer value representing an existing raster band number.
##' @param ROUNDING_DIRECTION `enum`  of `("Round up", "Round to nearest", "Round down")` - Rounding direction. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DECIMAL_PLACES `number` - Number of decimals places. A numeric value.
##' @param OUTPUT `rasterDestination` - Output raster. Path for new raster layer.
##' @param BASE_N `number` - Base n for rounding to multiples of n. A numeric value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Output raster
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_roundrastervalues <- function(INPUT = qgisprocess::qgis_default_value(), BAND = qgisprocess::qgis_default_value(), ROUNDING_DIRECTION = qgisprocess::qgis_default_value(), DECIMAL_PLACES = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(), BASE_N = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("native:roundrastervalues")
  output <- qgisprocess::qgis_run_algorithm("native:roundrastervalues",`INPUT` = INPUT, `BAND` = BAND, `ROUNDING_DIRECTION` = ROUNDING_DIRECTION, `DECIMAL_PLACES` = DECIMAL_PLACES, `OUTPUT` = OUTPUT, `BASE_N` = BASE_N,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}