##' QGIS Algorithm provided by QGIS (native c++) Import geotagged photos (native:importphotos)
##'
##' @title QGIS algorithm Import geotagged photos
##'
##' @param FOLDER `file` - Input folder. Path to a file.
##' @param RECURSIVE `boolean` - Scan recursively. 1 for true/yes. 0 for false/no.
##' @param OUTPUT `sink` - Photos. Path for new vector layer.
##' @param INVALID `sink` - Invalid photos table. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputVector - Photos
##' * INVALID - outputVector - Invalid photos table
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_importphotos <- function(FOLDER = qgisprocess::qgis_default_value(), RECURSIVE = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(), INVALID = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("native:importphotos")
  output <- qgisprocess::qgis_run_algorithm("native:importphotos",`FOLDER` = FOLDER, `RECURSIVE` = RECURSIVE, `OUTPUT` = OUTPUT, `INVALID` = INVALID,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}