##' QGIS Algorithm provided by QGIS Check validity (qgis:checkvalidity)
##'
##' @title QGIS algorithm Check validity
##'
##' @param INPUT_LAYER `source` - Input layer. Path to a vector layer.
##' @param METHOD `enum`  of `("The one selected in digitizing settings", "QGIS", "GEOS")` - Method. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param IGNORE_RING_SELF_INTERSECTION `boolean` - Ignore ring self intersections. 1 for true/yes. 0 for false/no.
##' @param VALID_OUTPUT `sink` - Valid output. Path for new vector layer.
##' @param INVALID_OUTPUT `sink` - Invalid output. Path for new vector layer.
##' @param ERROR_OUTPUT `sink` - Error output. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * VALID_OUTPUT - outputVector - Valid output
##' * VALID_COUNT - outputNumber - Count of valid features
##' * INVALID_OUTPUT - outputVector - Invalid output
##' * INVALID_COUNT - outputNumber - Count of invalid features
##' * ERROR_OUTPUT - outputVector - Error output
##' * ERROR_COUNT - outputNumber - Count of errors
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_checkvalidity <- function(INPUT_LAYER = qgisprocess::qgis_default_value(), METHOD = qgisprocess::qgis_default_value(), IGNORE_RING_SELF_INTERSECTION = qgisprocess::qgis_default_value(), VALID_OUTPUT = qgisprocess::qgis_default_value(), INVALID_OUTPUT = qgisprocess::qgis_default_value(), ERROR_OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("qgis:checkvalidity",`INPUT_LAYER` = INPUT_LAYER, `METHOD` = METHOD, `IGNORE_RING_SELF_INTERSECTION` = IGNORE_RING_SELF_INTERSECTION, `VALID_OUTPUT` = VALID_OUTPUT, `INVALID_OUTPUT` = INVALID_OUTPUT, `ERROR_OUTPUT` = ERROR_OUTPUT,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "VALID_OUTPUT")
}
}