##' QGIS Algorithm provided by QGIS (native c++) Rename field (native:renametablefield)
##'
##' @title QGIS algorithm Rename field
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param FIELD `field` - Field to rename. The name of an existing field. ; delimited list of existing field names.
##' @param NEW_NAME `string` - New field name. String value.
##' @param OUTPUT `sink` - Renamed. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Renamed
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_renametablefield <- function(INPUT = qgisprocess::qgis_default_value(), FIELD = qgisprocess::qgis_default_value(), NEW_NAME = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("native:renametablefield",`INPUT` = INPUT, `FIELD` = FIELD, `NEW_NAME` = NEW_NAME, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}