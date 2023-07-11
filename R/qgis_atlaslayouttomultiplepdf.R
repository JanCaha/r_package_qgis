character(0)

qgis_atlaslayouttomultiplepdf <- function(LAYOUT = qgisprocess:::qgis_default_value(), COVERAGE_LAYER = qgisprocess:::qgis_default_value(), FILTER_EXPRESSION = qgisprocess:::qgis_default_value(), SORTBY_EXPRESSION = qgisprocess:::qgis_default_value(), SORTBY_REVERSE = qgisprocess:::qgis_default_value(), LAYERS = qgisprocess:::qgis_default_value(), DPI = qgisprocess:::qgis_default_value(), FORCE_VECTOR = qgisprocess:::qgis_default_value(), FORCE_RASTER = qgisprocess:::qgis_default_value(), GEOREFERENCE = qgisprocess:::qgis_default_value(), INCLUDE_METADATA = qgisprocess:::qgis_default_value(), DISABLE_TILED = qgisprocess:::qgis_default_value(), SIMPLIFY = qgisprocess:::qgis_default_value(), TEXT_FORMAT = qgisprocess:::qgis_default_value(), IMAGE_COMPRESSION = qgisprocess:::qgis_default_value(), OUTPUT_FILENAME = qgisprocess:::qgis_default_value(), OUTPUT_FOLDER = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("native:atlaslayouttomultiplepdf")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("native:atlaslayouttomultiplepdf", `LAYOUT` = LAYOUT, `COVERAGE_LAYER` = COVERAGE_LAYER, `FILTER_EXPRESSION` = FILTER_EXPRESSION, `SORTBY_EXPRESSION` = SORTBY_EXPRESSION, `SORTBY_REVERSE` = SORTBY_REVERSE, `LAYERS` = LAYERS, `DPI` = DPI, `FORCE_VECTOR` = FORCE_VECTOR, `FORCE_RASTER` = FORCE_RASTER, `GEOREFERENCE` = GEOREFERENCE, `INCLUDE_METADATA` = INCLUDE_METADATA, `DISABLE_TILED` = DISABLE_TILED, `SIMPLIFY` = SIMPLIFY, `TEXT_FORMAT` = TEXT_FORMAT, `IMAGE_COMPRESSION` = IMAGE_COMPRESSION, `OUTPUT_FILENAME` = OUTPUT_FILENAME, `OUTPUT_FOLDER` = OUTPUT_FOLDER,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("native:atlaslayouttomultiplepdf", `LAYOUT` = LAYOUT, `COVERAGE_LAYER` = COVERAGE_LAYER, `FILTER_EXPRESSION` = FILTER_EXPRESSION, `SORTBY_EXPRESSION` = SORTBY_EXPRESSION, `SORTBY_REVERSE` = SORTBY_REVERSE, `LAYERS` = LAYERS, `DPI` = DPI, `FORCE_VECTOR` = FORCE_VECTOR, `FORCE_RASTER` = FORCE_RASTER, `GEOREFERENCE` = GEOREFERENCE, `INCLUDE_METADATA` = INCLUDE_METADATA, `DISABLE_TILED` = DISABLE_TILED, `SIMPLIFY` = SIMPLIFY, `TEXT_FORMAT` = TEXT_FORMAT, `IMAGE_COMPRESSION` = IMAGE_COMPRESSION, `OUTPUT_FILENAME` = OUTPUT_FILENAME, `OUTPUT_FOLDER` = OUTPUT_FOLDER,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NA")
  }
}