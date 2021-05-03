##' QGIS Algorithm provided by GDAL Rasterize (overwrite with fixed value) (gdal:rasterize_over_fixed_value)
##'
##' @title QGIS algorithm Rasterize (overwrite with fixed value)
##'
##' @param INPUT `source` - Input vector layer. Path to a vector layer.
##' @param INPUT_RASTER `raster` - Input raster layer. Path to a raster layer.
##' @param BURN `number` - A fixed value to burn. A numeric value.
##' @param ADD `boolean` - Add burn in values to existing raster values. 1 for true/yes. 0 for false/no.
##' @param EXTRA `string` - Additional command-line parameters. String value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Rasterized
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

gdal_rasterize_over_fixed_value <- function(INPUT = qgisprocess::qgis_default_value(), INPUT_RASTER = qgisprocess::qgis_default_value(), BURN = qgisprocess::qgis_default_value(), ADD = qgisprocess::qgis_default_value(), EXTRA = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("gdal:rasterize_over_fixed_value")

  output <- qgisprocess::qgis_run_algorithm("gdal:rasterize_over_fixed_value", `INPUT` = INPUT, `INPUT_RASTER` = INPUT_RASTER, `BURN` = BURN, `ADD` = ADD, `EXTRA` = EXTRA,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}