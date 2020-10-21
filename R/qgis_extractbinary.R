##' QGIS Algorithm provided by QGIS (native c++) Extract binary field (native:extractbinary)
##'
##' @title QGIS algorithm Extract binary field
##'
##' @param INPUT `source` - Input layer. Path to a vector layer.
##' @param FIELD `field` - Binary field. The name of an existing field. ; delimited list of existing field names.
##' @param FILENAME `expression` - File name. A valid QGIS expression string, e.g "road_name" = 'MAIN RD'.
##' @param FOLDER `folderDestination` - Destination folder. Path for an existing or new folder.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * FOLDER - outputFolder - Destination folder
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_extractbinary <- function(INPUT = qgisprocess::qgis_default_value(), FIELD = qgisprocess::qgis_default_value(), FILENAME = qgisprocess::qgis_default_value(), FOLDER = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("native:extractbinary",`INPUT` = INPUT, `FIELD` = FIELD, `FILENAME` = FILENAME, `FOLDER` = FOLDER,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "FOLDER")
  }
}