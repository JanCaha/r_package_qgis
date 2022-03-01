##' QGIS Algorithm provided by GDAL Rasterize (overwrite with attribute) (gdal:rasterize_over)
##'
##' @title QGIS algorithm Rasterize (overwrite with attribute)
##'
##' @param INPUT `source` - Input vector layer. Path to a vector layer.
##' @param INPUT_RASTER `raster` - Input raster layer. Path to a raster layer.
##' @param FIELD `field` - Field to use for burn in value. The name of an existing field. ; delimited list of existing field names.
##' @param ADD `boolean` - Add burn in values to existing raster values. 1 for true/yes. 0 for false/no.
##' @param EXTRA `string` - Additional command-line parameters. String value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Rasterized
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

gdal_rasterize_over <- function(INPUT = qgisprocess::qgis_default_value(), INPUT_RASTER = qgisprocess::qgis_default_value(), FIELD = qgisprocess::qgis_default_value(), ADD = qgisprocess::qgis_default_value(), EXTRA = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("gdal:rasterize_over")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("gdal:rasterize_over", `INPUT` = INPUT, `INPUT_RASTER` = INPUT_RASTER, `FIELD` = FIELD, `ADD` = ADD, `EXTRA` = EXTRA,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("gdal:rasterize_over", `INPUT` = INPUT, `INPUT_RASTER` = INPUT_RASTER, `FIELD` = FIELD, `ADD` = ADD, `EXTRA` = EXTRA,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}