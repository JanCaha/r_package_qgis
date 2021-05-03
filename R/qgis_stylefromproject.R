##' QGIS Algorithm provided by QGIS (native c++) Create style database from project (native:stylefromproject)
##'
##' @title QGIS algorithm Create style database from project
##'
##' @param INPUT `file` - Input project (leave blank to use current). Path to a file.
##' @param OUTPUT `fileDestination` - Output style database. Path for new file.
##' @param OBJECTS `enum`  of `("Symbols", "Color ramps", "Text formats", "Label settings")` - Objects to extract. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
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

qgis_stylefromproject <- function(INPUT = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(), OBJECTS = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("native:stylefromproject")
  output <- qgisprocess::qgis_run_algorithm("native:stylefromproject",`INPUT` = INPUT, `OUTPUT` = OUTPUT, `OBJECTS` = OBJECTS,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}