##' QGIS Algorithm provided by QGIS (native c++) Package layers (native:package)
##'
##' @title QGIS algorithm Package layers
##'
##' @param LAYERS `multilayer` - Input layers. .
##' @param OUTPUT `fileDestination` - Destination GeoPackage. Path for new file.
##' @param OVERWRITE `boolean` - Overwrite existing GeoPackage. 1 for true/yes. 0 for false/no.
##' @param SAVE_STYLES `boolean` - Save layer styles into GeoPackage. 1 for true/yes. 0 for false/no.
##' @param SAVE_METADATA `boolean` - Save layer metadata into GeoPackage. 1 for true/yes. 0 for false/no.
##' @param SELECTED_FEATURES_ONLY `boolean` - Save only selected features. 1 for true/yes. 0 for false/no.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifying if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##' @param .quiet logical specifying if parameter `.quiet` for `qgisprocess::qgis_run_algorithm()` Default value is `TRUE`.
##' @param .messages logical specifying if messages from `qgisprocess::qgis_run_algorithm()` should be printed (`TRUE`) or not (`FALSE`). Default value is `FALSE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputFile - Destination GeoPackage
##' * OUTPUT_LAYERS - outputMultilayer - Layers within new package
##'
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_package <- function(LAYERS = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(), OVERWRITE = qgisprocess::qgis_default_value(), SAVE_STYLES = qgisprocess::qgis_default_value(), SAVE_METADATA = qgisprocess::qgis_default_value(), SELECTED_FEATURES_ONLY = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:package")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:package", `LAYERS` = LAYERS, `OUTPUT` = OUTPUT, `OVERWRITE` = OVERWRITE, `SAVE_STYLES` = SAVE_STYLES, `SAVE_METADATA` = SAVE_METADATA, `SELECTED_FEATURES_ONLY` = SELECTED_FEATURES_ONLY,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:package", `LAYERS` = LAYERS, `OUTPUT` = OUTPUT, `OVERWRITE` = OVERWRITE, `SAVE_STYLES` = SAVE_STYLES, `SAVE_METADATA` = SAVE_METADATA, `SELECTED_FEATURES_ONLY` = SELECTED_FEATURES_ONLY,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}