##' QGIS Algorithm provided by QGIS (native c++) Create style database from project (native:stylefromproject). Creates a style database by extracting all symbols, color ramps, text formats and label settings from a QGIS project. This algorithm extracts all style objects (including symbols, color ramps, text formats and label settings) from a QGIS project.  The extracted symbols are saved to a QGIS style database (XML format), which can be managed and imported via the Style Manager dialog.
##'
##' @title QGIS algorithm - Create style database from project
##'
##' @param INPUT `file` - Input project (leave blank to use current). Path to a file.
##' @param OUTPUT `fileDestination` - Output style database. Path for new file.
##' @param OBJECTS `enum`  of `("Symbols", "Color ramps", "Text formats", "Label settings")` - Objects to extract. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
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
##' @importFrom qgisprocess qgis_run_algorithm

qgis_stylefromproject <- function(INPUT = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(), OBJECTS = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:stylefromproject")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:stylefromproject", `INPUT` = INPUT, `OUTPUT` = OUTPUT, `OBJECTS` = OBJECTS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:stylefromproject", `INPUT` = INPUT, `OUTPUT` = OUTPUT, `OBJECTS` = OBJECTS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "COLORRAMPS")
  }
}