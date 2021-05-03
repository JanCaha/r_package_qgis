##' QGIS Algorithm provided by QGIS Basic statistics for fields (qgis:basicstatisticsforfields)
##'
##' @title QGIS algorithm Basic statistics for fields
##'
##' @param INPUT_LAYER `source` - Input layer. Path to a vector layer.
##' @param FIELD_NAME `field` - Field to calculate statistics on. The name of an existing field. ; delimited list of existing field names.
##' @param OUTPUT_HTML_FILE `fileDestination` - Statistics. Path for new file.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT_HTML_FILE - outputHtml - Statistics
##' * COUNT - outputNumber - Count
##' * UNIQUE - outputNumber - Number of unique values
##' * EMPTY - outputNumber - Number of empty 
##' * FILLED - outputNumber - Number of non
##' * MIN - outputNumber - Minimum value
##' * MAX - outputNumber - Maximum value
##' * MIN_LENGTH - outputNumber - Minimum length
##' * MAX_LENGTH - outputNumber - Maximum length
##' * MEAN_LENGTH - outputNumber - Mean length
##' * CV - outputNumber - Coefficient of Variation
##' * SUM - outputNumber - Sum
##' * MEAN - outputNumber - Mean value
##' * STD_DEV - outputNumber - Standard deviation
##' * RANGE - outputNumber - Range
##' * MEDIAN - outputNumber - Median
##' * MINORITY - outputNumber - Minority 
##' * MAJORITY - outputNumber - Majority 
##' * FIRSTQUARTILE - outputNumber - First quartile
##' * THIRDQUARTILE - outputNumber - Third quartile
##' * IQR - outputNumber - Interquartile Range 
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_basicstatisticsforfields <- function(INPUT_LAYER = qgisprocess::qgis_default_value(), FIELD_NAME = qgisprocess::qgis_default_value(), OUTPUT_HTML_FILE = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("qgis:basicstatisticsforfields")

  output <- qgisprocess::qgis_run_algorithm("qgis:basicstatisticsforfields", `INPUT_LAYER` = INPUT_LAYER, `FIELD_NAME` = FIELD_NAME, `OUTPUT_HTML_FILE` = OUTPUT_HTML_FILE,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT_HTML_FILE")
  }
}