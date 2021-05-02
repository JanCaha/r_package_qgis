##' QGIS Algorithm provided by QGIS (native c++) Create attribute index (native:createattributeindex)
##'
##' @title QGIS algorithm Create attribute index
##'
##' @param INPUT `vector` - Input layer. Path to a vector layer.
##' @param FIELD `field` - Attribute to index. The name of an existing field. ; delimited list of existing field names.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Indexed layer
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_createattributeindex <- function(INPUT = qgisprocess::qgis_default_value(), FIELD = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("native:createattributeindex")
  output <- qgisprocess::qgis_run_algorithm("native:createattributeindex",`INPUT` = INPUT, `FIELD` = FIELD,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}