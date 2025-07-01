##' QGIS Algorithm provided by QGIS (native c++) Basic statistics for fields (native:basicstatisticsforfields). Generates basic statistics from the values in a field of a vector layer. This algorithm generates basic statistics from the analysis of values in a field in the attribute table of a vector layer. Numeric, date, time and string fields are supported. The statistics returned will depend on the field type.
##'
##' @title QGIS algorithm - Basic statistics for fields
##'
##' @param INPUT_LAYER `source` - Input layer. Path to a vector layer.
##' @param FIELD_NAME `field` - Field to calculate statistics on. The name of an existing field. ; delimited list of existing field names.
##' @param OUTPUT `sink` - Statistics. Path for new vector layer.
##' @param OUTPUT_HTML_FILE `fileDestination` - Statistics report. Path for new file.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * COUNT - outputNumber - Count
##' * CV - outputNumber - Coefficient of Variation
##' * EMPTY - outputNumber - Number of empty (null) values
##' * FILLED - outputNumber - Number of non-empty values
##' * FIRSTQUARTILE - outputNumber - First quartile
##' * IQR - outputNumber - Interquartile Range (IQR)
##' * MAJORITY - outputNumber - Majority (most frequently occurring value)
##' * MAX - outputNumber - Maximum value
##' * MAX_LENGTH - outputNumber - Maximum length
##' * MEAN - outputNumber - Mean value
##' * MEAN_LENGTH - outputNumber - Mean length
##' * MEDIAN - outputNumber - Median
##' * MIN - outputNumber - Minimum value
##' * MINORITY - outputNumber - Minority (rarest occurring value)
##' * MIN_LENGTH - outputNumber - Minimum length
##' * OUTPUT - outputVector - Statistics
##' * OUTPUT_HTML_FILE - outputHtml - Statistics report
##' * RANGE - outputNumber - Range
##' * STD_DEV - outputNumber - Standard deviation
##' * SUM - outputNumber - Sum
##' * THIRDQUARTILE - outputNumber - Third quartile
##' * UNIQUE - outputNumber - Number of unique values
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_basicstatisticsforfields <- function(INPUT_LAYER = qgisprocess:::qgis_default_value(), FIELD_NAME = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(), OUTPUT_HTML_FILE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:basicstatisticsforfields")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:basicstatisticsforfields", `INPUT_LAYER` = INPUT_LAYER, `FIELD_NAME` = FIELD_NAME, `OUTPUT` = OUTPUT, `OUTPUT_HTML_FILE` = OUTPUT_HTML_FILE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:basicstatisticsforfields", `INPUT_LAYER` = INPUT_LAYER, `FIELD_NAME` = FIELD_NAME, `OUTPUT` = OUTPUT, `OUTPUT_HTML_FILE` = OUTPUT_HTML_FILE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "COUNT")
  }
}