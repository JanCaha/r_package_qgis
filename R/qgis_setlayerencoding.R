##' QGIS Algorithm provided by QGIS (native c++) Set layer encoding (native:setlayerencoding)
##'
##' @title QGIS algorithm Set layer encoding
##'
##' @param INPUT `vector` - Input layer. Path to a vector layer.
##' @param ENCODING `string` - Encoding. String value.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Output layer
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_setlayerencoding <- function(INPUT = qgisprocess::qgis_default_value(), ENCODING = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("native:setlayerencoding",`INPUT` = INPUT, `ENCODING` = ENCODING,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}