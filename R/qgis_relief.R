##' QGIS Algorithm provided by QGIS Relief (qgis:relief)
##'
##' @title QGIS algorithm Relief
##'
##' @param INPUT `raster` - Elevation layer. Path to a raster layer.
##' @param Z_FACTOR `number` - Z factor. A numeric value.
##' @param AUTO_COLORS `boolean` - Generate relief classes automatically. 1 for true/yes. 0 for false/no.
##' @param COLORS `relief_colors` - Relief colors. .
##' @param OUTPUT `rasterDestination` - Relief. Path for new raster layer.
##' @param FREQUENCY_DISTRIBUTION `fileDestination` - Frequency distribution. Path for new file.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Relief
##' * FREQUENCY_DISTRIBUTION - outputFile - Frequency distribution
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_relief <- function(INPUT = qgisprocess::qgis_default_value(), Z_FACTOR = qgisprocess::qgis_default_value(), AUTO_COLORS = qgisprocess::qgis_default_value(), COLORS = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(), FREQUENCY_DISTRIBUTION = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("qgis:relief",`INPUT` = INPUT, `Z_FACTOR` = Z_FACTOR, `AUTO_COLORS` = AUTO_COLORS, `COLORS` = COLORS, `OUTPUT` = OUTPUT, `FREQUENCY_DISTRIBUTION` = FREQUENCY_DISTRIBUTION,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
}
}