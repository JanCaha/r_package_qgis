##' QGIS Algorithm provided by QGIS (native c++) Package layers (native:package)
##'
##' @title QGIS algorithm Package layers
##'
##' @param LAYERS `multilayer` - Input layers. .
##' @param OUTPUT `fileDestination` - Destination GeoPackage. Path for new file.
##' @param OVERWRITE `boolean` - Overwrite existing GeoPackage. 1 for true/yes. 0 for false/no.
##' @param SAVE_STYLES `boolean` - Save layer styles into GeoPackage. 1 for true/yes. 0 for false/no.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputFile - Destination GeoPackage
##' * OUTPUT_LAYERS - outputMultilayer - Layers within new package
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_package <- function(LAYERS = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(), OVERWRITE = qgisprocess::qgis_default_value(), SAVE_STYLES = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  output <- qgisprocess::qgis_run_algorithm("native:package",`LAYERS` = LAYERS, `OUTPUT` = OUTPUT, `OVERWRITE` = OVERWRITE, `SAVE_STYLES` = SAVE_STYLES,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}