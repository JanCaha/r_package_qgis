##' QGIS Algorithm provided by QGIS (native c++) Rescale raster (native:rescaleraster). Rescales raster layer to a new value range, while preserving the shape (distribution) of the raster's histogram (pixel values). Input values are mapped using a linear interpolation from the source raster's minimum and maximum pixel values to the destination minimum and maximum pixel range.  By default the algorithm preserves original the NODATA value, but there is an option to override it.
##'
##' @title QGIS algorithm - Rescale raster
##'
##' @param INPUT `raster` - Input raster. Path to a raster layer.
##' @param BAND `band` - Band number. Integer value representing an existing raster band number.
##' @param MINIMUM `number` - New minimum value. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param MAXIMUM `number` - New maximum value. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param NODATA `number` - New NODATA value. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `rasterDestination` - Rescaled. Path for new raster layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputRaster - Rescaled
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_rescaleraster <- function(INPUT = qgisprocess:::qgis_default_value(), BAND = qgisprocess:::qgis_default_value(), MINIMUM = qgisprocess:::qgis_default_value(), MAXIMUM = qgisprocess:::qgis_default_value(), NODATA = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:rescaleraster")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:rescaleraster", `INPUT` = INPUT, `BAND` = BAND, `MINIMUM` = MINIMUM, `MAXIMUM` = MAXIMUM, `NODATA` = NODATA, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:rescaleraster", `INPUT` = INPUT, `BAND` = BAND, `MINIMUM` = MINIMUM, `MAXIMUM` = MAXIMUM, `NODATA` = NODATA, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}