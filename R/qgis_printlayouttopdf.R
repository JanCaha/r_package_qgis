##' QGIS Algorithm provided by QGIS (native c++) Export print layout as PDF (native:printlayouttopdf). Exports a print layout as a PDF. This algorithm outputs a print layout as a PDF file.
##'
##' @title QGIS algorithm - Export print layout as PDF
##'
##' @param LAYOUT `layout` - Print layout. Name of print layout in current project.
##' @param LAYERS `multilayer` - Map layers to assign to unlocked map item(s). .
##' @param DPI `number` - DPI (leave blank for default layout DPI). A numeric value. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param FORCE_VECTOR `boolean` - Always export as vectors. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param FORCE_RASTER `boolean` - Always export as raster. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param GEOREFERENCE `boolean` - Append georeference information. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param INCLUDE_METADATA `boolean` - Export RDF metadata (title, author, etc.). 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param DISABLE_TILED `boolean` - Disable tiled raster layer exports. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SIMPLIFY `boolean` - Simplify geometries to reduce output file size. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param TEXT_FORMAT `enum`  of `("Always Export Text as Paths (Recommended)", "Always Export Text as Text Objects", "Prefer Exporting Text as Text Objects")` - Text export. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param IMAGE_COMPRESSION `enum`  of `("Lossy (JPEG)", "Lossless")` - Image compression. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SEPARATE_LAYERS `boolean` - Export layers as separate PDF files. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
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

qgis_printlayouttopdf <- function(LAYOUT = qgisprocess:::qgis_default_value(), LAYERS = qgisprocess:::qgis_default_value(), DPI = qgisprocess:::qgis_default_value(), FORCE_VECTOR = qgisprocess:::qgis_default_value(), FORCE_RASTER = qgisprocess:::qgis_default_value(), GEOREFERENCE = qgisprocess:::qgis_default_value(), INCLUDE_METADATA = qgisprocess:::qgis_default_value(), DISABLE_TILED = qgisprocess:::qgis_default_value(), SIMPLIFY = qgisprocess:::qgis_default_value(), TEXT_FORMAT = qgisprocess:::qgis_default_value(), IMAGE_COMPRESSION = qgisprocess:::qgis_default_value(), SEPARATE_LAYERS = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:printlayouttopdf")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:printlayouttopdf", `LAYOUT` = LAYOUT, `LAYERS` = LAYERS, `DPI` = DPI, `FORCE_VECTOR` = FORCE_VECTOR, `FORCE_RASTER` = FORCE_RASTER, `GEOREFERENCE` = GEOREFERENCE, `INCLUDE_METADATA` = INCLUDE_METADATA, `DISABLE_TILED` = DISABLE_TILED, `SIMPLIFY` = SIMPLIFY, `TEXT_FORMAT` = TEXT_FORMAT, `IMAGE_COMPRESSION` = IMAGE_COMPRESSION, `SEPARATE_LAYERS` = SEPARATE_LAYERS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:printlayouttopdf", `LAYOUT` = LAYOUT, `LAYERS` = LAYERS, `DPI` = DPI, `FORCE_VECTOR` = FORCE_VECTOR, `FORCE_RASTER` = FORCE_RASTER, `GEOREFERENCE` = GEOREFERENCE, `INCLUDE_METADATA` = INCLUDE_METADATA, `DISABLE_TILED` = DISABLE_TILED, `SIMPLIFY` = SIMPLIFY, `TEXT_FORMAT` = TEXT_FORMAT, `IMAGE_COMPRESSION` = IMAGE_COMPRESSION, `SEPARATE_LAYERS` = SEPARATE_LAYERS, `OUTPUT` = OUTPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}