##' QGIS Algorithm provided by QGIS (native c++) Refactor fields (native:refactorfields)
##'
##' @title QGIS algorithm Refactor fields
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param FIELDS_MAPPING `fields_mapping` - Fields mapping. .
##' @param OUTPUT `sink` - Refactored. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Refactored
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_refactorfields <- function(INPUT = qgisprocess::qgis_default_value(), FIELDS_MAPPING = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("native:refactorfields",`INPUT` = INPUT, `FIELDS_MAPPING` = FIELDS_MAPPING, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}