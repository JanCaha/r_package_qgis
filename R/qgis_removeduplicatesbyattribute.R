##' QGIS Algorithm provided by QGIS (native c++) Delete duplicates by attribute (native:removeduplicatesbyattribute)
##'
##' @title QGIS algorithm Delete duplicates by attribute
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param FIELDS `field` - Field to match duplicates by. The name of an existing field. ; delimited list of existing field names.
##' @param OUTPUT `sink` - Filtered (no duplicates). Path for new vector layer.
##' @param DUPLICATES `sink` - Filtered (duplicates). Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Filtered 
##' * DUPLICATES - outputVector - Filtered 
##' * RETAINED_COUNT - outputNumber - Count of retained records
##' * DUPLICATE_COUNT - outputNumber - Count of discarded duplicate records
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_removeduplicatesbyattribute <- function(INPUT = qgisprocess::qgis_default_value(), FIELDS = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(), DUPLICATES = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("native:removeduplicatesbyattribute")
  output <- qgisprocess::qgis_run_algorithm("native:removeduplicatesbyattribute",`INPUT` = INPUT, `FIELDS` = FIELDS, `OUTPUT` = OUTPUT, `DUPLICATES` = DUPLICATES,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}