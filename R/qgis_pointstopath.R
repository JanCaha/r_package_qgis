##' QGIS Algorithm provided by QGIS (native c++) Points to path (native:pointstopath)
##'
##' @title QGIS algorithm Points to path
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param CLOSE_PATH `boolean` - Create closed paths. 1 for true/yes. 0 for false/no.
##' @param ORDER_EXPRESSION `expression` - Order expression. A valid QGIS expression string, e.g "road_name" = 'MAIN RD'.
##' @param NATURAL_SORT `boolean` - Sort text containing numbers naturally. 1 for true/yes. 0 for false/no.
##' @param GROUP_EXPRESSION `expression` - Path group expression. A valid QGIS expression string, e.g "road_name" = 'MAIN RD'.
##' @param OUTPUT `sink` - Paths. Path for new vector layer.
##' @param OUTPUT_TEXT_DIR `folderDestination` - Directory for text output. Path for an existing or new folder.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * NUM_PATHS - outputNumber - Number of paths
##' * OUTPUT - outputVector - Paths
##' * OUTPUT_TEXT_DIR - outputFolder - Directory for text output
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_pointstopath <- function(INPUT = qgisprocess:::qgis_default_value(), CLOSE_PATH = qgisprocess:::qgis_default_value(), ORDER_EXPRESSION = qgisprocess:::qgis_default_value(), NATURAL_SORT = qgisprocess:::qgis_default_value(), GROUP_EXPRESSION = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(), OUTPUT_TEXT_DIR = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:pointstopath")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:pointstopath", `INPUT` = INPUT, `CLOSE_PATH` = CLOSE_PATH, `ORDER_EXPRESSION` = ORDER_EXPRESSION, `NATURAL_SORT` = NATURAL_SORT, `GROUP_EXPRESSION` = GROUP_EXPRESSION, `OUTPUT` = OUTPUT, `OUTPUT_TEXT_DIR` = OUTPUT_TEXT_DIR,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:pointstopath", `INPUT` = INPUT, `CLOSE_PATH` = CLOSE_PATH, `ORDER_EXPRESSION` = ORDER_EXPRESSION, `NATURAL_SORT` = NATURAL_SORT, `GROUP_EXPRESSION` = GROUP_EXPRESSION, `OUTPUT` = OUTPUT, `OUTPUT_TEXT_DIR` = OUTPUT_TEXT_DIR,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NUM_PATHS")
  }
}