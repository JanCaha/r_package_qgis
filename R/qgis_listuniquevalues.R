##' QGIS Algorithm provided by QGIS List unique values (qgis:listuniquevalues). This algorithm generates a report with information about the unique values found in a given attribute (or attributes) of a vector layer.
##'
##' @title QGIS algorithm - List unique values
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param FIELDS `field` - Target field(s). The name of an existing field. ; delimited list of existing field names.
##' @param OUTPUT `sink` - Unique values. Path for new vector layer.
##' @param OUTPUT_HTML_FILE `fileDestination` - HTML report. Path for new file.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Unique values
##' * OUTPUT_HTML_FILE - outputHtml - HTML report
##' * TOTAL_VALUES - outputNumber - Total unique values
##' * UNIQUE_VALUES - outputString - Unique values
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_listuniquevalues <- function(INPUT = qgisprocess:::qgis_default_value(), FIELDS = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(), OUTPUT_HTML_FILE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("qgis:listuniquevalues")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("qgis:listuniquevalues", `INPUT` = INPUT, `FIELDS` = FIELDS, `OUTPUT` = OUTPUT, `OUTPUT_HTML_FILE` = OUTPUT_HTML_FILE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("qgis:listuniquevalues", `INPUT` = INPUT, `FIELDS` = FIELDS, `OUTPUT` = OUTPUT, `OUTPUT_HTML_FILE` = OUTPUT_HTML_FILE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}