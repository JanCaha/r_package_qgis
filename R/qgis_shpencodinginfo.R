##' QGIS Algorithm provided by QGIS (native c++) Extract Shapefile encoding (native:shpencodinginfo)
##'
##' @title QGIS algorithm Extract Shapefile encoding
##'
##' @param INPUT `file` - Input layer. Path to a file.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * CPG_ENCODING - outputString - CPG Encoding
##' * ENCODING - outputString - Shapefile Encoding
##' * LDID_ENCODING - outputString - LDID Encoding
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_shpencodinginfo <- function(INPUT = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:shpencodinginfo")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:shpencodinginfo", `INPUT` = INPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:shpencodinginfo", `INPUT` = INPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "CPG_ENCODING")
  }
}