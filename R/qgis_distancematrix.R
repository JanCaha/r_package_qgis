##' QGIS Algorithm provided by QGIS Distance matrix (qgis:distancematrix)
##'
##' @title QGIS algorithm Distance matrix
##'
##' @param INPUT `source` - Input point layer. Path to a vector layer.
##' @param INPUT_FIELD `field` - Input unique ID field. The name of an existing field. ; delimited list of existing field names.
##' @param TARGET `source` - Target point layer. Path to a vector layer.
##' @param TARGET_FIELD `field` - Target unique ID field. The name of an existing field. ; delimited list of existing field names.
##' @param MATRIX_TYPE `enum`  of `("Linear (N*k x 3) distance matrix", "Standard (N x T) distance matrix", "Summary distance matrix (mean, std. dev., min, max)")` - Output matrix type. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param NEAREST_POINTS `number` - Use only the nearest (k) target points. A numeric value.
##' @param OUTPUT `sink` - Distance matrix. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Distance matrix
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_distancematrix <- function(INPUT = qgisprocess::qgis_default_value(), INPUT_FIELD = qgisprocess::qgis_default_value(), TARGET = qgisprocess::qgis_default_value(), TARGET_FIELD = qgisprocess::qgis_default_value(), MATRIX_TYPE = qgisprocess::qgis_default_value(), NEAREST_POINTS = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("qgis:distancematrix")
  output <- qgisprocess::qgis_run_algorithm("qgis:distancematrix",`INPUT` = INPUT, `INPUT_FIELD` = INPUT_FIELD, `TARGET` = TARGET, `TARGET_FIELD` = TARGET_FIELD, `MATRIX_TYPE` = MATRIX_TYPE, `NEAREST_POINTS` = NEAREST_POINTS, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}