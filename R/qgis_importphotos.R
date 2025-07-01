##' QGIS Algorithm provided by QGIS (native c++) Import geotagged photos (native:importphotos). Creates a point layer corresponding to the geotagged locations from JPEG or HEIF/HEIC images from a source folder. This algorithm creates a point layer corresponding to the geotagged locations from JPEG or HEIF/HEIC images from a source folder. Optionally the folder can be recursively scanned.  The point layer will contain a single PointZ feature per input file from which the geotags could be read. Any altitude information from the geotags will be used to set the point's Z value.  Optionally, a table of unreadable or non-geotagged photos can also be created.
##'
##' @title QGIS algorithm - Import geotagged photos
##'
##' @param FOLDER `file` - Input folder. Path to a file.
##' @param RECURSIVE `boolean` - Scan recursively. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param OUTPUT `sink` - Photos. Path for new vector layer.
##' @param INVALID `sink` - Invalid photos table. Path for new vector layer.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * INVALID - outputVector - Invalid photos table
##' * OUTPUT - outputVector - Photos
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_importphotos <- function(FOLDER = qgisprocess:::qgis_default_value(), RECURSIVE = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(), INVALID = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:importphotos")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:importphotos", `FOLDER` = FOLDER, `RECURSIVE` = RECURSIVE, `OUTPUT` = OUTPUT, `INVALID` = INVALID,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:importphotos", `FOLDER` = FOLDER, `RECURSIVE` = RECURSIVE, `OUTPUT` = OUTPUT, `INVALID` = INVALID,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "INVALID")
  }
}