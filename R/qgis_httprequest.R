##' QGIS Algorithm provided by QGIS (native c++) HTTP(S) POST/GET request (native:httprequest). Performs a HTTP(S) POST/GET request and returns the result code, error message and the data. This algorithm performs a HTTP(S) POST/GET request and returns the HTTP status code and the reply data. If an error occurs then the error code and the message will be returned.  Optionally, the result can be written to a file on disk.  By default the algorithm will warn on errors. Optionally, the algorithm can be set to treat HTTP errors as failures.
##'
##' @title QGIS algorithm - HTTP(S) POST/GET request
##'
##' @param URL `string` - URL. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param METHOD `enum`  of `("GET", "POST")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DATA `string` - POST data. String value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `fileDestination` - File destination. Path for new file.
##' @param AUTH_CONFIG `authcfg` - Authentication. An existing QGIS authentication ID string.
##' @param FAIL_ON_ERROR `boolean` - Consider HTTP errors as failures. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * ERROR_CODE - outputNumber - Network error code
##' * ERROR_MESSAGE - outputString - Network error message
##' * OUTPUT - outputFile - File destination
##' * RESULT_DATA - outputString - Reply data
##' * STATUS_CODE - outputNumber - HTTP status code
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_httprequest <- function(URL = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(), DATA = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(), AUTH_CONFIG = qgisprocess:::qgis_default_value(), FAIL_ON_ERROR = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:httprequest")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:httprequest", `URL` = URL, `METHOD` = METHOD, `DATA` = DATA, `OUTPUT` = OUTPUT, `AUTH_CONFIG` = AUTH_CONFIG, `FAIL_ON_ERROR` = FAIL_ON_ERROR,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:httprequest", `URL` = URL, `METHOD` = METHOD, `DATA` = DATA, `OUTPUT` = OUTPUT, `AUTH_CONFIG` = AUTH_CONFIG, `FAIL_ON_ERROR` = FAIL_ON_ERROR,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "ERROR_CODE")
  }
}