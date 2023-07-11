##' QGIS Algorithm provided by QGIS (native c++) Zonal statistics (in place) (native:zonalstatistics). Calculates statistics for a raster layer's values for each feature of an overlapping polygon vector layer. This algorithm calculates statistics of a raster layer for each feature of an overlapping polygon vector layer. The results will be written in place.
##'
##' @title QGIS algorithm - Zonal statistics (in place)
##'
##' @param INPUT_RASTER `raster` - Raster layer. Path to a raster layer.
##' @param RASTER_BAND `band` - Raster band. Integer value representing an existing raster band number.
##' @param INPUT_VECTOR `vector` - Vector layer containing zones. Path to a vector layer.
##' @param COLUMN_PREFIX `string` - Output column prefix. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param STATISTICS `enum`  of `("Count", "Sum", "Mean", "Median", "St dev", "Minimum", "Maximum", "Range", "Minority", "Majority", "Variety", "Variance")` - Statistics to calculate. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * INPUT_VECTOR - outputVector - Zonal statistics
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_zonalstatistics <- function(INPUT_RASTER = qgisprocess:::qgis_default_value(), RASTER_BAND = qgisprocess:::qgis_default_value(), INPUT_VECTOR = qgisprocess:::qgis_default_value(), COLUMN_PREFIX = qgisprocess:::qgis_default_value(), STATISTICS = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:zonalstatistics")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:zonalstatistics", `INPUT_RASTER` = INPUT_RASTER, `RASTER_BAND` = RASTER_BAND, `INPUT_VECTOR` = INPUT_VECTOR, `COLUMN_PREFIX` = COLUMN_PREFIX, `STATISTICS` = STATISTICS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:zonalstatistics", `INPUT_RASTER` = INPUT_RASTER, `RASTER_BAND` = RASTER_BAND, `INPUT_VECTOR` = INPUT_VECTOR, `COLUMN_PREFIX` = COLUMN_PREFIX, `STATISTICS` = STATISTICS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "INPUT_VECTOR")
  }
}