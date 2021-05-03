##' QGIS Algorithm provided by QGIS (native c++) Fill NoData cells (native:fillnodata)
##'
##' @title QGIS algorithm Fill NoData cells
##'
##' @param INPUT `raster` - Raster input. Path to a raster layer.
##' @param BAND `band` - Band Number. Integer value representing an existing raster band number.
##' @param FILL_VALUE `number` - Fill value. A numeric value.
##' @param OUTPUT `rasterDestination` - Output raster. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Output raster
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_fillnodata <- function(INPUT = qgisprocess::qgis_default_value(), BAND = qgisprocess::qgis_default_value(), FILL_VALUE = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("native:fillnodata")

  output <- qgisprocess::qgis_run_algorithm("native:fillnodata", `INPUT` = INPUT, `BAND` = BAND, `FILL_VALUE` = FILL_VALUE, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}