character(0)

qgis_atlaslayouttoimage <- function(LAYOUT = qgisprocess::qgis_default_value(), COVERAGE_LAYER = qgisprocess::qgis_default_value(), FILTER_EXPRESSION = qgisprocess::qgis_default_value(), SORTBY_EXPRESSION = qgisprocess::qgis_default_value(), SORTBY_REVERSE = qgisprocess::qgis_default_value(), FILENAME_EXPRESSION = qgisprocess::qgis_default_value(), FOLDER = qgisprocess::qgis_default_value(), LAYERS = qgisprocess::qgis_default_value(), EXTENSION = qgisprocess::qgis_default_value(), DPI = qgisprocess::qgis_default_value(), GEOREFERENCE = qgisprocess::qgis_default_value(), INCLUDE_METADATA = qgisprocess::qgis_default_value(), ANTIALIAS = qgisprocess::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

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
    qgisprocess::qgis_output(output, "NA")
  }
}