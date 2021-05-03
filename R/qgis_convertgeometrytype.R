##' QGIS Algorithm provided by QGIS Convert geometry type (qgis:convertgeometrytype)
##'
##' @title QGIS algorithm Convert geometry type
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param TYPE `enum`  of `("Centroids", "Nodes", "Linestrings", "Multilinestrings", "Polygons")` - New geometry type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param OUTPUT `sink` - Converted. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Converted
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_convertgeometrytype <- function(INPUT = qgisprocess::qgis_default_value(), TYPE = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("qgis:convertgeometrytype")
  output <- qgisprocess::qgis_run_algorithm("qgis:convertgeometrytype",`INPUT` = INPUT, `TYPE` = TYPE, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}