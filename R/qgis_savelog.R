##' QGIS Algorithm provided by QGIS (native c++) Save log to file (native:savelog)
##'
##' @title QGIS algorithm Save log to file
##'
##' @param OUTPUT `fileDestination` - Log file. Path for new file.
##' @param USE_HTML `boolean` - Use HTML formatting. 1 for true/yes. 0 for false/no.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputHtml - Log file
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_savelog <- function(OUTPUT = qgisprocess::qgis_default_value(), USE_HTML = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("native:savelog",`OUTPUT` = OUTPUT, `USE_HTML` = USE_HTML,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}