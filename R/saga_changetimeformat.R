##' QGIS Algorithm provided by SAGA Change time format (saga:changetimeformat)
##'
##' @title QGIS algorithm Change time format
##'
##' @param TABLE `source` - Table. Path to a vector layer.
##' @param FIELD `field` - Time Field. The name of an existing field. ; delimited list of existing field names.
##' @param FMT_IN `enum`  of `("[0] hh.mm.ss", "[1] hh:mm:ss", "[2] hhmmss, fix size", "[3] hours", "[4] minutes", "[5] seconds")` - Input Format. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param FMT_OUT `enum`  of `("[0] hh.mm.ss", "[1] hh:mm:ss", "[2] hhmmss, fix size", "[3] hours", "[4] minutes", "[5] seconds")` - Output Format. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
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

saga_changetimeformat <- function(TABLE = qgisprocess::qgis_default_value(), FIELD = qgisprocess::qgis_default_value(), FMT_IN = qgisprocess::qgis_default_value(), FMT_OUT = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:changetimeformat",`TABLE` = TABLE, `FIELD` = FIELD, `FMT_IN` = FMT_IN, `FMT_OUT` = FMT_OUT, `OUTPUT` = OUTPUT,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
}
}