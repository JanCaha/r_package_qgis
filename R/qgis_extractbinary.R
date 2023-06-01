##' QGIS Algorithm provided by QGIS (native c++) Extract binary field (native:extractbinary)
##'
##' @title QGIS algorithm Extract binary field
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param FIELD `field` - Binary field. The name of an existing field. ; delimited list of existing field names.
##' @param FILENAME `expression` - File name. A valid QGIS expression string, e.g "road_name" = 'MAIN RD'.
##' @param FOLDER `folderDestination` - Destination folder. Path for an existing or new folder.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * FOLDER - outputFolder - Destination folder
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_extractbinary <- function(INPUT = qgisprocess:::qgis_default_value(), FIELD = qgisprocess:::qgis_default_value(), FILENAME = qgisprocess:::qgis_default_value(), FOLDER = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:extractbinary")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:extractbinary", `INPUT` = INPUT, `FIELD` = FIELD, `FILENAME` = FILENAME, `FOLDER` = FOLDER,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:extractbinary", `INPUT` = INPUT, `FIELD` = FIELD, `FILENAME` = FILENAME, `FOLDER` = FOLDER,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "FOLDER")
  }
}