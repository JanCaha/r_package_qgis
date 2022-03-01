##' QGIS Algorithm provided by QGIS (native c++) Extract M values (native:extractmvalues)
##'
##' @title QGIS algorithm Extract M values
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param SUMMARIES `enum`  of `("First", "Last", "Count", "Sum", "Mean", "Median", "St dev (pop)", "Minimum", "Maximum", "Range", "Minority", "Majority", "Variety", "Q1", "Q3", "IQR")` - Summaries to calculate. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param COLUMN_PREFIX `string` - Output column prefix. String value.
##' @param OUTPUT `sink` - Extracted. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Extracted
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_extractmvalues <- function(INPUT = qgisprocess::qgis_default_value(), SUMMARIES = qgisprocess::qgis_default_value(), COLUMN_PREFIX = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:extractmvalues")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:extractmvalues", `INPUT` = INPUT, `SUMMARIES` = SUMMARIES, `COLUMN_PREFIX` = COLUMN_PREFIX, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:extractmvalues", `INPUT` = INPUT, `SUMMARIES` = SUMMARIES, `COLUMN_PREFIX` = COLUMN_PREFIX, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}