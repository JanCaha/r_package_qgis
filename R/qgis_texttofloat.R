##' QGIS Algorithm provided by QGIS Text to float (qgis:texttofloat)
##'
##' @title QGIS algorithm Text to float
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param FIELD `field` - Text attribute to convert to float. The name of an existing field. ; delimited list of existing field names.
##' @param OUTPUT `sink` - Float from text. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Float from text
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_texttofloat <- function(INPUT = qgisprocess::qgis_default_value(), FIELD = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("qgis:texttofloat")
  output <- qgisprocess::qgis_run_algorithm("qgis:texttofloat",`INPUT` = INPUT, `FIELD` = FIELD, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}