##' QGIS Algorithm provided by QGIS (native c++) Export atlas layout as image (native:atlaslayouttoimage). Exports an atlas layout as a set of images. This algorithm outputs an atlas layout to a set of image files (e.g. PNG or JPEG images).  If a coverage layer is set, the selected layout's atlas settings exposed in this algorithm will be overwritten. In this case, an empty filter or sort by expression will turn those settings off.
##'
##' @title QGIS algorithm - Export atlas layout as image
##'
##' @param LAYOUT `layout` - Atlas layout. Name of print layout in current project.
##' @param COVERAGE_LAYER `vector` - Coverage layer. Path to a vector layer.
##' @param FILTER_EXPRESSION `expression` - Filter expression. A valid QGIS expression string, e.g "road_name" = 'MAIN RD'.
##' @param SORTBY_EXPRESSION `expression` - Sort expression. A valid QGIS expression string, e.g "road_name" = 'MAIN RD'.
##' @param SORTBY_REVERSE `boolean` - Reverse sort order (used when a sort expression is provided). 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param FILENAME_EXPRESSION `expression` - Output filename expression. A valid QGIS expression string, e.g "road_name" = 'MAIN RD'.
##' @param FOLDER `file` - Output folder. Path to a file.
##' @param LAYERS `multilayer` - Map layers to assign to unlocked map item(s). .
##' @param EXTENSION `enum`  of `("bmp", "cur", "icns", "ico", "jpeg", "jpg", "pbm", "pgm", "png", "ppm", "tif", "tiff", "wbmp", "webp", "xbm", "xpm")` - Image format. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param DPI `number` - DPI (leave blank for default layout DPI). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param GEOREFERENCE `boolean` - Generate world file. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param INCLUDE_METADATA `boolean` - Export RDF metadata (title, author, etc.). 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ANTIALIAS `boolean` - Enable antialiasing. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' No output description provided.
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_atlaslayouttoimage <- function(LAYOUT = qgisprocess:::qgis_default_value(), COVERAGE_LAYER = qgisprocess:::qgis_default_value(), FILTER_EXPRESSION = qgisprocess:::qgis_default_value(), SORTBY_EXPRESSION = qgisprocess:::qgis_default_value(), SORTBY_REVERSE = qgisprocess:::qgis_default_value(), FILENAME_EXPRESSION = qgisprocess:::qgis_default_value(), FOLDER = qgisprocess:::qgis_default_value(), LAYERS = qgisprocess:::qgis_default_value(), EXTENSION = qgisprocess:::qgis_default_value(), DPI = qgisprocess:::qgis_default_value(), GEOREFERENCE = qgisprocess:::qgis_default_value(), INCLUDE_METADATA = qgisprocess:::qgis_default_value(), ANTIALIAS = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:atlaslayouttoimage")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:atlaslayouttoimage", `LAYOUT` = LAYOUT, `COVERAGE_LAYER` = COVERAGE_LAYER, `FILTER_EXPRESSION` = FILTER_EXPRESSION, `SORTBY_EXPRESSION` = SORTBY_EXPRESSION, `SORTBY_REVERSE` = SORTBY_REVERSE, `FILENAME_EXPRESSION` = FILENAME_EXPRESSION, `FOLDER` = FOLDER, `LAYERS` = LAYERS, `EXTENSION` = EXTENSION, `DPI` = DPI, `GEOREFERENCE` = GEOREFERENCE, `INCLUDE_METADATA` = INCLUDE_METADATA, `ANTIALIAS` = ANTIALIAS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:atlaslayouttoimage", `LAYOUT` = LAYOUT, `COVERAGE_LAYER` = COVERAGE_LAYER, `FILTER_EXPRESSION` = FILTER_EXPRESSION, `SORTBY_EXPRESSION` = SORTBY_EXPRESSION, `SORTBY_REVERSE` = SORTBY_REVERSE, `FILENAME_EXPRESSION` = FILENAME_EXPRESSION, `FOLDER` = FOLDER, `LAYERS` = LAYERS, `EXTENSION` = EXTENSION, `DPI` = DPI, `GEOREFERENCE` = GEOREFERENCE, `INCLUDE_METADATA` = INCLUDE_METADATA, `ANTIALIAS` = ANTIALIAS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NA")
  }
}