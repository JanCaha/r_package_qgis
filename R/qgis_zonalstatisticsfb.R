##' QGIS Algorithm provided by QGIS (native c++) Zonal statistics (native:zonalstatisticsfb). Calculates statistics of a raster layer for each feature of an overlapping polygon vector layer. This algorithm calculates statistics of a raster layer for each feature of an overlapping polygon vector layer.
##'
##' @title QGIS algorithm - Zonal statistics
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param INPUT_RASTER `raster` - Raster layer. Path to a raster layer.
##' @param RASTER_BAND `band` - Raster band. Integer value representing an existing raster band number.
##' @param COLUMN_PREFIX `string` - Output column prefix. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param STATISTICS `enum`  of `("Count", "Sum", "Mean", "Median", "St dev", "Minimum", "Maximum", "Range", "Minority", "Majority", "Variety", "Variance")` - Statistics to calculate. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param OUTPUT `sink` - Zonal Statistics. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Zonal Statistics
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_zonalstatisticsfb <- function(INPUT = qgisprocess:::qgis_default_value(), INPUT_RASTER = qgisprocess:::qgis_default_value(), RASTER_BAND = qgisprocess:::qgis_default_value(), COLUMN_PREFIX = qgisprocess:::qgis_default_value(), STATISTICS = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:zonalstatisticsfb")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:zonalstatisticsfb", `INPUT` = INPUT, `INPUT_RASTER` = INPUT_RASTER, `RASTER_BAND` = RASTER_BAND, `COLUMN_PREFIX` = COLUMN_PREFIX, `STATISTICS` = STATISTICS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:zonalstatisticsfb", `INPUT` = INPUT, `INPUT_RASTER` = INPUT_RASTER, `RASTER_BAND` = RASTER_BAND, `COLUMN_PREFIX` = COLUMN_PREFIX, `STATISTICS` = STATISTICS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}