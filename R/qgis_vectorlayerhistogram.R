##' QGIS Algorithm provided by QGIS Vector layer histogram (qgis:vectorlayerhistogram). This algorithm generates a histogram with the values of the attribute of a vector layer. The attribute to use for computing the histogram must be a numeric attribute.
##'
##' @title QGIS algorithm - Vector layer histogram
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param FIELD `field` - Attribute. The name of an existing field. ; delimited list of existing field names.
##' @param BINS `number` - number of bins. A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `fileDestination` - Histogram. Path for new file.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputHtml - Histogram
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_vectorlayerhistogram <- function(INPUT = qgisprocess:::qgis_default_value(), FIELD = qgisprocess:::qgis_default_value(), BINS = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("qgis:vectorlayerhistogram")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("qgis:vectorlayerhistogram", `INPUT` = INPUT, `FIELD` = FIELD, `BINS` = BINS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("qgis:vectorlayerhistogram", `INPUT` = INPUT, `FIELD` = FIELD, `BINS` = BINS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}