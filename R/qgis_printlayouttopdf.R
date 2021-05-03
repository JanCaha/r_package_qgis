##' QGIS Algorithm provided by QGIS (native c++) Export print layout as PDF (native:printlayouttopdf)
##'
##' @title QGIS algorithm Export print layout as PDF
##'
##' @param LAYOUT `layout` - Print layout. Name of print layout in current project.
##' @param LAYERS `multilayer` - Map layers to assign to unlocked map item(s). .
##' @param DPI `number` - DPI (leave blank for default layout DPI). A numeric value.
##' @param FORCE_VECTOR `boolean` - Always export as vectors. 1 for true/yes. 0 for false/no.
##' @param GEOREFERENCE `boolean` - Append georeference information. 1 for true/yes. 0 for false/no.
##' @param INCLUDE_METADATA `boolean` - Export RDF metadata (title, author, etc.). 1 for true/yes. 0 for false/no.
##' @param DISABLE_TILED `boolean` - Disable tiled raster layer exports. 1 for true/yes. 0 for false/no.
##' @param SIMPLIFY `boolean` - Simplify geometries to reduce output file size. 1 for true/yes. 0 for false/no.
##' @param TEXT_FORMAT `enum`  of `("Always Export Text as Paths (Recommended)", "Always Export Text as Text Objects")` - Text export. Number of selected option, e.g. '1'. Comma separated list of options, e.g. '1,3'.
##' @param SEPARATE_LAYERS `boolean` - Export layers as separate PDF files. 1 for true/yes. 0 for false/no.
##' @param OUTPUT `fileDestination` - PDF file. Path for new file.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputFile - PDF file
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_printlayouttopdf <- function(LAYOUT = qgisprocess::qgis_default_value(), LAYERS = qgisprocess::qgis_default_value(), DPI = qgisprocess::qgis_default_value(), FORCE_VECTOR = qgisprocess::qgis_default_value(), GEOREFERENCE = qgisprocess::qgis_default_value(), INCLUDE_METADATA = qgisprocess::qgis_default_value(), DISABLE_TILED = qgisprocess::qgis_default_value(), SIMPLIFY = qgisprocess::qgis_default_value(), TEXT_FORMAT = qgisprocess::qgis_default_value(), SEPARATE_LAYERS = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  check_QGIS_versions()
  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("native:printlayouttopdf")
  output <- qgisprocess::qgis_run_algorithm("native:printlayouttopdf",`LAYOUT` = LAYOUT, `LAYERS` = LAYERS, `DPI` = DPI, `FORCE_VECTOR` = FORCE_VECTOR, `GEOREFERENCE` = GEOREFERENCE, `INCLUDE_METADATA` = INCLUDE_METADATA, `DISABLE_TILED` = DISABLE_TILED, `SIMPLIFY` = SIMPLIFY, `TEXT_FORMAT` = TEXT_FORMAT, `SEPARATE_LAYERS` = SEPARATE_LAYERS, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}