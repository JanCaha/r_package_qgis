##' QGIS Algorithm provided by QGIS List unique values (qgis:listuniquevalues)
##'
##' @title QGIS algorithm List unique values
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param FIELDS `field` - Target field(s). The name of an existing field. ; delimited list of existing field names.
##' @param OUTPUT `sink` - Unique values. Path for new vector layer.
##' @param OUTPUT_HTML_FILE `fileDestination` - HTML report. Path for new file.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Unique values
##' * OUTPUT_HTML_FILE - outputHtml - HTML report
##' * TOTAL_VALUES - outputNumber - Total unique values
##' * UNIQUE_VALUES - outputString - Unique values
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_listuniquevalues <- function(INPUT = qgisprocess::qgis_default_value(), FIELDS = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(), OUTPUT_HTML_FILE = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("qgis:listuniquevalues",`INPUT` = INPUT, `FIELDS` = FIELDS, `OUTPUT` = OUTPUT, `OUTPUT_HTML_FILE` = OUTPUT_HTML_FILE,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}