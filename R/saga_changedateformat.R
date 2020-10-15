##' QGIS Algorithm provided by SAGA Change date format (saga:changedateformat)
##'
##' @title QGIS algorithm Change date format
##'
##' @param TABLE `source` - Table. Path to a vector layer.
##' @param FIELD `field` - Date Field. The name of an existing field. ; delimited list of existing field names.
##' @param FMT_IN `enum`  of `("[0] dd.mm.yy", "[1] yy.mm.dd", "[2] dd:mm:yy", "[3] yy:mm:dd", "[4] ddmmyyyy, fix size", "[5] yyyymmdd, fix size", "[6] ddmmyy, fix size", "[7] yymmdd, fix size", "[8] Julian Day")` - Input Format. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param FMT_OUT `enum`  of `("[0] dd.mm.yy", "[1] yy.mm.dd", "[2] dd:mm:yy", "[3] yy:mm:dd", "[4] ddmmyyyy, fix size", "[5] yyyymmdd, fix size", "[6] ddmmyy, fix size", "[7] yymmdd, fix size", "[8] Julian Day")` - Output Format. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
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

saga_changedateformat <- function(TABLE = qgisprocess::qgis_default_value(), FIELD = qgisprocess::qgis_default_value(), FMT_IN = qgisprocess::qgis_default_value(), FMT_OUT = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("saga:changedateformat",`TABLE` = TABLE, `FIELD` = FIELD, `FMT_IN` = FMT_IN, `FMT_OUT` = FMT_OUT, `OUTPUT` = OUTPUT,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
}
}