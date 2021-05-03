##' QGIS Algorithm provided by QGIS (native c++) Raster pixels to points (native:pixelstopoints)
##'
##' @title QGIS algorithm Raster pixels to points
##'
##' @param INPUT_RASTER `raster` - Raster layer. Path to a raster layer.
##' @param RASTER_BAND `band` - Band number. Integer value representing an existing raster band number.
##' @param FIELD_NAME `string` - Field name. String value.
##' @param OUTPUT `sink` - Vector points. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Vector points
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_pixelstopoints <- function(INPUT_RASTER = qgisprocess::qgis_default_value(), RASTER_BAND = qgisprocess::qgis_default_value(), FIELD_NAME = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("native:pixelstopoints")

  output <- qgisprocess::qgis_run_algorithm("native:pixelstopoints", `INPUT_RASTER` = INPUT_RASTER, `RASTER_BAND` = RASTER_BAND, `FIELD_NAME` = FIELD_NAME, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}