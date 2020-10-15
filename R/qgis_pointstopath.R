##' QGIS Algorithm provided by QGIS Points to path (qgis:pointstopath)
##'
##' @title QGIS algorithm Points to path
##'
##' @param INPUT `source` - Input point layer. Path to a vector layer.
##' @param ORDER_FIELD `field` - Order field. The name of an existing field. ; delimited list of existing field names.
##' @param GROUP_FIELD `field` - Group field. The name of an existing field. ; delimited list of existing field names.
##' @param DATE_FORMAT `string` - Date format (if order field is DateTime). String value.
##' @param OUTPUT `sink` - Paths. Path for new vector layer.
##' @param OUTPUT_TEXT_DIR `folderDestination` - Directory for text output. Path for an existing or new folder.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Paths
##' * OUTPUT_TEXT_DIR - outputFolder - Directory for text output
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_pointstopath <- function(INPUT = qgisprocess::qgis_default_value(), ORDER_FIELD = qgisprocess::qgis_default_value(), GROUP_FIELD = qgisprocess::qgis_default_value(), DATE_FORMAT = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(), OUTPUT_TEXT_DIR = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("qgis:pointstopath",`INPUT` = INPUT, `ORDER_FIELD` = ORDER_FIELD, `GROUP_FIELD` = GROUP_FIELD, `DATE_FORMAT` = DATE_FORMAT, `OUTPUT` = OUTPUT, `OUTPUT_TEXT_DIR` = OUTPUT_TEXT_DIR,...)
  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
}
}