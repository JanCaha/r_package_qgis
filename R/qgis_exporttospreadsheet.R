##' QGIS Algorithm provided by QGIS (native c++) Export to spreadsheet (native:exporttospreadsheet)
##'
##' @title QGIS algorithm Export to spreadsheet
##'
##' @param LAYERS `multilayer` - Input layers. .
##' @param USE_ALIAS `boolean` - Use field aliases as column headings. 1 for true/yes. 0 for false/no.
##' @param FORMATTED_VALUES `boolean` - Export formatted values instead of raw values. 1 for true/yes. 0 for false/no.
##' @param OUTPUT `fileDestination` - Destination spreadsheet. Path for new file.
##' @param OVERWRITE `boolean` - Overwrite existing spreadsheet. 1 for true/yes. 0 for false/no.
##' @param ... further parameters passed to `qgisprocess::qgis_run_algorithm()`
##' @param .complete_output logical specifing if complete out of `qgisprocess::qgis_run_algorithm()` should be used (`TRUE`) or first output (most likely the main) should read (`FALSE`). Default value is `TRUE`.
##'
##' @details
##' ## Outputs description
##' * OUTPUT - outputFile - Destination spreadsheet
##' * OUTPUT_LAYERS - outputMultilayer - Layers within spreadsheet
##'
##' @export
##' @md
##' @importFrom qgisprocess qgis_run_algorithm qgis_default_value

qgis_exporttospreadsheet <- function(LAYERS = qgisprocess::qgis_default_value(), USE_ALIAS = qgisprocess::qgis_default_value(), FORMATTED_VALUES = qgisprocess::qgis_default_value(), OUTPUT = qgisprocess::qgis_default_value(), OVERWRITE = qgisprocess::qgis_default_value(),..., .complete_output = TRUE) {

  qgisprocess::assert_qgis()
  qgisprocess::assert_qgis_algorithm("native:exporttospreadsheet")
  output <- qgisprocess::qgis_run_algorithm("native:exporttospreadsheet",`LAYERS` = LAYERS, `USE_ALIAS` = USE_ALIAS, `FORMATTED_VALUES` = FORMATTED_VALUES, `OUTPUT` = OUTPUT, `OVERWRITE` = OVERWRITE,...)

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_output(output, "OUTPUT")
  }
}