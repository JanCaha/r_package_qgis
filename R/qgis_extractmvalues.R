##' QGIS Algorithm provided by QGIS (native c++) Extract M values (native:extractmvalues)
##'
##' @title QGIS algorithm Extract M values
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param SUMMARIES `enum`  of `("First", "Last", "Count", "Sum", "Mean", "Median", "St dev (pop)", "Minimum", "Maximum", "Range", "Minority", "Majority", "Variety", "Q1", "Q3", "IQR")` - Summaries to calculate. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param COLUMN_PREFIX `string` - Output column prefix. String value.
##' @param OUTPUT `sink` - Extracted. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Extracted
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_extractmvalues <- function(INPUT = qgisprocess::qgis_default_value(), SUMMARIES = qgisprocess::qgis_default_value(), COLUMN_PREFIX = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("native:extractmvalues")
  output <- qgisprocess::qgis_run_algorithm("native:extractmvalues",`INPUT` = INPUT, `SUMMARIES` = SUMMARIES, `COLUMN_PREFIX` = COLUMN_PREFIX, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}