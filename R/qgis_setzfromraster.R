##' QGIS Algorithm provided by QGIS (native c++) Drape (set Z value from raster) (native:setzfromraster). Sets the z value for vertices to values sampled from a raster layer. This algorithm sets the z value of every vertex in the feature geometry to a value sampled from a band within a raster layer.  The raster values can optionally be scaled by a preset amount and an offset can be algebraically added.
##'
##' @title QGIS algorithm - Drape (set Z value from raster)
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param RASTER `raster` - Raster layer. Path to a raster layer.
##' @param BAND `band` - Band number. Integer value representing an existing raster band number.
##' @param NODATA `number` - Value for nodata or non-intersecting vertices. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SCALE `number` - Scale factor. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OFFSET `number` - Offset. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `sink` - Draped. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Draped
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_setzfromraster <- function(INPUT = qgisprocess:::qgis_default_value(), RASTER = qgisprocess:::qgis_default_value(), BAND = qgisprocess:::qgis_default_value(), NODATA = qgisprocess:::qgis_default_value(), SCALE = qgisprocess:::qgis_default_value(), OFFSET = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:setzfromraster")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:setzfromraster", `INPUT` = INPUT, `RASTER` = RASTER, `BAND` = BAND, `NODATA` = NODATA, `SCALE` = SCALE, `OFFSET` = OFFSET, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:setzfromraster", `INPUT` = INPUT, `RASTER` = RASTER, `BAND` = BAND, `NODATA` = NODATA, `SCALE` = SCALE, `OFFSET` = OFFSET, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}