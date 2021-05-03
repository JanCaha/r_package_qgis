##' QGIS Algorithm provided by GDAL Near black (gdal:nearblack)
##'
##' @title QGIS algorithm Near black
##'
##' @param INPUT `raster` - Input layer. Path to a raster layer.
##' @param NEAR `number` - How far from black (white). A numeric value.
##' @param WHITE `boolean` - Search for nearly white pixels instead of nearly black. 1 for true/yes. 0 for false/no.
##' @param OPTIONS `string` - Additional creation options. String value.
##' @param EXTRA `string` - Additional command-line parameters. String value.
##' @param OUTPUT `rasterDestination` - Nearblack. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Nearblack
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

gdal_nearblack <- function(INPUT = qgisprocess::qgis_default_value(), NEAR = qgisprocess::qgis_default_value(), WHITE = qgisprocess::qgis_default_value(), OPTIONS = qgisprocess::qgis_default_value(), EXTRA = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("gdal:nearblack")
  output <- qgisprocess::qgis_run_algorithm("gdal:nearblack",`INPUT` = INPUT, `NEAR` = NEAR, `WHITE` = WHITE, `OPTIONS` = OPTIONS, `EXTRA` = EXTRA, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}