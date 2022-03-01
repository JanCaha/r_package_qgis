##' QGIS Algorithm provided by QGIS (native c++) Combine style databases (native:combinestyles)
##'
##' @title QGIS algorithm Combine style databases
##'
##' @param INPUT `multilayer` - Input databases. .
##' @param OUTPUT `fileDestination` - Output style database. Path for new file.
##' @param OBJECTS `enum`  of `("Symbols", "Color ramps", "Text formats", "Label settings")` - Objects to combine. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * COLORRAMPS - outputNumber - Color ramp count
##' * LABELSETTINGS - outputNumber - Label settings count
##' * OUTPUT - outputFile - Output style database
##' * SYMBOLS - outputNumber - Symbol count
##' * TEXTFORMATS - outputNumber - Text format count
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_combinestyles <- function(INPUT = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(), OBJECTS = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:combinestyles")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:combinestyles", `INPUT` = INPUT, `OUTPUT` = OUTPUT, `OBJECTS` = OBJECTS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:combinestyles", `INPUT` = INPUT, `OUTPUT` = OUTPUT, `OBJECTS` = OBJECTS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "COLORRAMPS")
  }
}