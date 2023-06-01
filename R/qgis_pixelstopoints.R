##' QGIS Algorithm provided by QGIS (native c++) Raster pixels to points (native:pixelstopoints)
##'
##' @title QGIS algorithm Raster pixels to points
##'
##' @param INPUT_RASTER `raster` - Raster layer. Path to a raster layer.
##' @param RASTER_BAND `band` - Band number. Integer value representing an existing raster band number.
##' @param FIELD_NAME `string` - Field name. String value.
##' @param OUTPUT `sink` - Vector points. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Vector points
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_pixelstopoints <- function(INPUT_RASTER = qgisprocess:::qgis_default_value(), RASTER_BAND = qgisprocess:::qgis_default_value(), FIELD_NAME = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:pixelstopoints")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:pixelstopoints", `INPUT_RASTER` = INPUT_RASTER, `RASTER_BAND` = RASTER_BAND, `FIELD_NAME` = FIELD_NAME, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:pixelstopoints", `INPUT_RASTER` = INPUT_RASTER, `RASTER_BAND` = RASTER_BAND, `FIELD_NAME` = FIELD_NAME, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}