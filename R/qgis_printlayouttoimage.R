##' QGIS Algorithm provided by QGIS (native c++) Export print layout as image (native:printlayouttoimage)
##'
##' @title QGIS algorithm Export print layout as image
##'
##' @param LAYOUT `layout` - Print layout. Name of print layout in current project.
##' @param LAYERS `multilayer` - Map layers to assign to unlocked map item(s). .
##' @param DPI `number` - DPI (leave blank for default layout DPI). A numeric value.
##' @param GEOREFERENCE `boolean` - Generate world file. 1 for true/yes. 0 for false/no.
##' @param INCLUDE_METADATA `boolean` - Export RDF metadata (title, author, etc.). 1 for true/yes. 0 for false/no.
##' @param ANTIALIAS `boolean` - Enable antialiasing. 1 for true/yes. 0 for false/no.
##' @param OUTPUT `fileDestination` - Image file. Path for new file.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputFile - Image file
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_printlayouttoimage <- function(LAYOUT = qgisprocess::qgis_default_value(), LAYERS = qgisprocess::qgis_default_value(), DPI = qgisprocess::qgis_default_value(), GEOREFERENCE = qgisprocess::qgis_default_value(), INCLUDE_METADATA = qgisprocess::qgis_default_value(), ANTIALIAS = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("native:printlayouttoimage",`LAYOUT` = LAYOUT, `LAYERS` = LAYERS, `DPI` = DPI, `GEOREFERENCE` = GEOREFERENCE, `INCLUDE_METADATA` = INCLUDE_METADATA, `ANTIALIAS` = ANTIALIAS, `OUTPUT` = OUTPUT,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}