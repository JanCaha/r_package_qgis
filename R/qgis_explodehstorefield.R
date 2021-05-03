##' QGIS Algorithm provided by QGIS (native c++) Explode HStore Field (native:explodehstorefield)
##'
##' @title QGIS algorithm Explode HStore Field
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param FIELD `field` - HStore field. The name of an existing field. ; delimited list of existing field names.
##' @param EXPECTED_FIELDS `string` - Expected list of fields separated by a comma. String value.
##' @param OUTPUT `sink` - Exploded. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Exploded
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_explodehstorefield <- function(INPUT = qgisprocess::qgis_default_value(), FIELD = qgisprocess::qgis_default_value(), EXPECTED_FIELDS = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("native:explodehstorefield")
  output <- qgisprocess::qgis_run_algorithm("native:explodehstorefield",`INPUT` = INPUT, `FIELD` = FIELD, `EXPECTED_FIELDS` = EXPECTED_FIELDS, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}