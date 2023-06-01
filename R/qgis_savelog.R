##' QGIS Algorithm provided by QGIS (native c++) Save log to file (native:savelog)
##'
##' @title QGIS algorithm Save log to file
##'
##' @param OUTPUT `fileDestination` - Log file. Path for new file.
##' @param USE_HTML `boolean` - Use HTML formatting. 1 for true/yes. 0 for false/no.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputHtml - Log file
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_savelog <- function(OUTPUT = qgisprocess:::qgis_default_value(), USE_HTML = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:savelog")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:savelog", `OUTPUT` = OUTPUT, `USE_HTML` = USE_HTML,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:savelog", `OUTPUT` = OUTPUT, `USE_HTML` = USE_HTML,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}