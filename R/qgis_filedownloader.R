##' QGIS Algorithm provided by QGIS (native c++) Download file (native:filedownloader)
##'
##' @title QGIS algorithm Download file
##'
##' @param URL `string` - URL. String value.
##' @param METHOD `enum`  of `("GET", "POST")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DATA `string` - Data. String value.
##' @param OUTPUT `fileDestination` - File destination. Path for new file.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputFile - File destination
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_filedownloader <- function(URL = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(), DATA = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("native:filedownloader")

  output <- qgisprocess::qgis_run_algorithm("native:filedownloader", `URL` = URL, `METHOD` = METHOD, `DATA` = DATA, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}