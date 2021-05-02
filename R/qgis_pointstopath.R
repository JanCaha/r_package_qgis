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
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Paths
##' * OUTPUT_TEXT_DIR - outputFolder - Directory for text output
##' * NUM_PATHS - outputNumber - Number of paths
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_pointstopath <- function(INPUT = qgisprocess::qgis_default_value(), CLOSE_PATH = qgisprocess::qgis_default_value(), ORDER_EXPRESSION = qgisprocess::qgis_default_value(), NATURAL_SORT = qgisprocess::qgis_default_value(), GROUP_EXPRESSION = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(), OUTPUT_TEXT_DIR = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("native:pointstopath")
  output <- qgisprocess::qgis_run_algorithm("native:pointstopath",`INPUT` = INPUT, `CLOSE_PATH` = CLOSE_PATH, `ORDER_EXPRESSION` = ORDER_EXPRESSION, `NATURAL_SORT` = NATURAL_SORT, `GROUP_EXPRESSION` = GROUP_EXPRESSION, `OUTPUT` = OUTPUT, `OUTPUT_TEXT_DIR` = OUTPUT_TEXT_DIR,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}