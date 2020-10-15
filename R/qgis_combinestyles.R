##' QGIS Algorithm provided by QGIS (native c++) Combine style databases (native:combinestyles)
##'
##' @title QGIS algorithm Combine style databases
##'
##' @param INPUT `multilayer` - Input databases. .
##' @param OUTPUT `fileDestination` - Output style database. Path for new file.
##' @param OBJECTS `enum`  of `("Symbols", "Color ramps", "Text formats", "Label settings")` - Objects to combine. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputFile - Output style database
##' * SYMBOLS - outputNumber - Symbol count
##' * COLORRAMPS - outputNumber - Color ramp count
##' * TEXTFORMATS - outputNumber - Text format count
##' * LABELSETTINGS - outputNumber - Label settings count
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_combinestyles <- function(INPUT = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(), OBJECTS = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("native:combinestyles",`INPUT` = INPUT, `OUTPUT` = OUTPUT, `OBJECTS` = OBJECTS,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
}
}