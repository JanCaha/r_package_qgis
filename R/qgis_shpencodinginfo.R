##' QGIS Algorithm provided by QGIS (native c++) Extract Shapefile encoding (native:shpencodinginfo)
##'
##' @title QGIS algorithm Extract Shapefile encoding
##'
##' @param INPUT `file` - Input layer. Path to a file.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
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

qgis_shpencodinginfo <- function(INPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_algorithm_necessities("native:shpencodinginfo")

  output <- qgisprocess::qgis_run_algorithm("native:shpencodinginfo", `INPUT` = INPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "CPG_ENCODING")
  }
}