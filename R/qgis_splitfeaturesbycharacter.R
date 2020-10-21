##' QGIS Algorithm provided by QGIS (native c++) Split features by character (native:splitfeaturesbycharacter)
##'
##' @title QGIS algorithm Split features by character
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param FIELD `field` - Split using values in field. The name of an existing field. ; delimited list of existing field names.
##' @param CHAR `string` - Split values using character. String value.
##' @param REGEX `boolean` - Use regular expression separator. 1 for true/yes. 0 for false/no.
##' @param OUTPUT `sink` - Split. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Split
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_splitfeaturesbycharacter <- function(INPUT = qgisprocess::qgis_default_value(), FIELD = qgisprocess::qgis_default_value(), CHAR = qgisprocess::qgis_default_value(), REGEX = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("native:splitfeaturesbycharacter",`INPUT` = INPUT, `FIELD` = FIELD, `CHAR` = CHAR, `REGEX` = REGEX, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}