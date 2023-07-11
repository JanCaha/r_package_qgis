##' QGIS Algorithm provided by QGIS (native c++) Package layers (native:package). This algorithm collects a number of existing layers and packages them together into a single GeoPackage database.
##'
##' @title QGIS algorithm - Package layers
##'
##' @param LAYERS `multilayer` - Input layers. .
##' @param OUTPUT `fileDestination` - Destination GeoPackage. Path for new file.
##' @param OVERWRITE `boolean` - Overwrite existing GeoPackage. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SAVE_STYLES `boolean` - Save layer styles into GeoPackage. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SAVE_METADATA `boolean` - Save layer metadata into GeoPackage. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param SELECTED_FEATURES_ONLY `boolean` - Save only selected features. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
##' @param EXPORT_RELATED_LAYERS `boolean` - Export related layers following relations defined in the project. 1 for true/yes. 0 for false/no. field:FIELD_NAME to use a data defined value taken from the FIELD_NAME field. expression:SOME EXPRESSION to use a data defined value calculated using a custom QGIS expression.
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
##' @importFrom qgisprocess qgis_run_algorithm

qgis_package <- function(LAYERS = qgisprocess:::qgis_default_value(), OUTPUT = qgisprocess:::qgis_default_value(), OVERWRITE = qgisprocess:::qgis_default_value(), SAVE_STYLES = qgisprocess:::qgis_default_value(), SAVE_METADATA = qgisprocess:::qgis_default_value(), SELECTED_FEATURES_ONLY = qgisprocess:::qgis_default_value(), EXPORT_RELATED_LAYERS = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:package")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:package", `LAYERS` = LAYERS, `OUTPUT` = OUTPUT, `OVERWRITE` = OVERWRITE, `SAVE_STYLES` = SAVE_STYLES, `SAVE_METADATA` = SAVE_METADATA, `SELECTED_FEATURES_ONLY` = SELECTED_FEATURES_ONLY, `EXPORT_RELATED_LAYERS` = EXPORT_RELATED_LAYERS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:package", `LAYERS` = LAYERS, `OUTPUT` = OUTPUT, `OVERWRITE` = OVERWRITE, `SAVE_STYLES` = SAVE_STYLES, `SAVE_METADATA` = SAVE_METADATA, `SELECTED_FEATURES_ONLY` = SELECTED_FEATURES_ONLY, `EXPORT_RELATED_LAYERS` = EXPORT_RELATED_LAYERS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "OUTPUT")
  }
}