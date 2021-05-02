##' QGIS Algorithm provided by SAGA Find field of extreme value (saga:findfieldofextremevalue)
##'
##' @title QGIS algorithm Find field of extreme value
##'
##' @param INPUT `source` - Input. Path to a vector layer.
##' @param FIELDS `field` - Attributes. The name of an existing field. ; delimited list of existing field names.
##' @param EXTREME_ID `field` - Attribute. The name of an existing field. ; delimited list of existing field names.
##' @param EXTREME_VALUE `field` - Value. The name of an existing field. ; delimited list of existing field names.
##' @param TYPE `enum`  of `("[0] minimum", "[1] maximum")` - TYPE. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param IDENTIFY `enum`  of `("[0] name", "[1] index")` - Attribute Identification. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param OUTPUT `vectorDestination` - Output. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Output
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

saga_findfieldofextremevalue <- function(INPUT = qgisprocess::qgis_default_value(), FIELDS = qgisprocess::qgis_default_value(), EXTREME_ID = qgisprocess::qgis_default_value(), EXTREME_VALUE = qgisprocess::qgis_default_value(), TYPE = qgisprocess::qgis_default_value(), IDENTIFY = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("saga:findfieldofextremevalue")
  output <- qgisprocess::qgis_run_algorithm("saga:findfieldofextremevalue",`INPUT` = INPUT, `FIELDS` = FIELDS, `EXTREME_ID` = EXTREME_ID, `EXTREME_VALUE` = EXTREME_VALUE, `TYPE` = TYPE, `IDENTIFY` = IDENTIFY, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}