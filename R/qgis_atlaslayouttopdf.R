##' QGIS Algorithm provided by QGIS (native c++) Export atlas layout as PDF (single file) (native:atlaslayouttopdf)
##'
##' @title QGIS algorithm Export atlas layout as PDF (single file)
##'
##' @param LAYOUT `layout` - Atlas layout. Name of print layout in current project.
##' @param COVERAGE_LAYER `vector` - Coverage layer. Path to a vector layer.
##' @param FILTER_EXPRESSION `expression` - Filter expression. A valid QGIS expression string, e.g "road_name" = 'MAIN RD'.
##' @param SORTBY_EXPRESSION `expression` - Sort expression. A valid QGIS expression string, e.g "road_name" = 'MAIN RD'.
##' @param SORTBY_REVERSE `boolean` - Reverse sort order (used when a sort expression is provided). 1 for true/yes. 0 for false/no.
##' @param LAYERS `multilayer` - Map layers to assign to unlocked map item(s). .
##' @param DPI `number` - DPI (leave blank for default layout DPI). A numeric value.
##' @param FORCE_VECTOR `boolean` - Always export as vectors. 1 for true/yes. 0 for false/no.
##' @param GEOREFERENCE `boolean` - Append georeference information. 1 for true/yes. 0 for false/no.
##' @param INCLUDE_METADATA `boolean` - Export RDF metadata (title, author, etc.). 1 for true/yes. 0 for false/no.
##' @param DISABLE_TILED `boolean` - Disable tiled raster layer exports. 1 for true/yes. 0 for false/no.
##' @param SIMPLIFY `boolean` - Simplify geometries to reduce output file size. 1 for true/yes. 0 for false/no.
##' @param TEXT_FORMAT `enum`  of `("Always Export Text as Paths (Recommended)", "Always Export Text as Text Objects")` - Text export. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param OUTPUT `fileDestination` - PDF file. Path for new file.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputFile - PDF file
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm

qgis_atlaslayouttopdf <- function(LAYOUT = qgisprocess:::qgis_default_value(), COVERAGE_LAYER = qgisprocess:::qgis_default_value(), FILTER_EXPRESSION = qgisprocess:::qgis_default_value(), SORTBY_EXPRESSION = qgisprocess:::qgis_default_value(), SORTBY_REVERSE = qgisprocess:::qgis_default_value(), LAYERS = qgisprocess:::qgis_default_value(), DPI = qgisprocess:::qgis_default_value(), FORCE_VECTOR = qgisprocess:::qgis_default_value(), GEOREFERENCE = qgisprocess:::qgis_default_value(), INCLUDE_METADATA = qgisprocess:::qgis_default_value(), DISABLE_TILED = qgisprocess:::qgis_default_value(), SIMPLIFY = qgisprocess:::qgis_default_value(), TEXT_FORMAT = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:atlaslayouttopdf")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:atlaslayouttopdf", `LAYOUT` = LAYOUT, `COVERAGE_LAYER` = COVERAGE_LAYER, `FILTER_EXPRESSION` = FILTER_EXPRESSION, `SORTBY_EXPRESSION` = SORTBY_EXPRESSION, `SORTBY_REVERSE` = SORTBY_REVERSE, `LAYERS` = LAYERS, `DPI` = DPI, `FORCE_VECTOR` = FORCE_VECTOR, `GEOREFERENCE` = GEOREFERENCE, `INCLUDE_METADATA` = INCLUDE_METADATA, `DISABLE_TILED` = DISABLE_TILED, `SIMPLIFY` = SIMPLIFY, `TEXT_FORMAT` = TEXT_FORMAT, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:atlaslayouttopdf", `LAYOUT` = LAYOUT, `COVERAGE_LAYER` = COVERAGE_LAYER, `FILTER_EXPRESSION` = FILTER_EXPRESSION, `SORTBY_EXPRESSION` = SORTBY_EXPRESSION, `SORTBY_REVERSE` = SORTBY_REVERSE, `LAYERS` = LAYERS, `DPI` = DPI, `FORCE_VECTOR` = FORCE_VECTOR, `GEOREFERENCE` = GEOREFERENCE, `INCLUDE_METADATA` = INCLUDE_METADATA, `DISABLE_TILED` = DISABLE_TILED, `SIMPLIFY` = SIMPLIFY, `TEXT_FORMAT` = TEXT_FORMAT, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}