character(0)

sagang_exportpolygonstohtmlimagemap <- function(POLYGONS = qgisprocess:::qgis_default_value(), LINK = qgisprocess:::qgis_default_value(), TITLE = qgisprocess:::qgis_default_value(), FILE = qgisprocess:::qgis_default_value(), LINK_PREFIX = qgisprocess:::qgis_default_value(), LINK_SUFFIX = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:exportpolygonstohtmlimagemap")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:exportpolygonstohtmlimagemap", `POLYGONS` = POLYGONS, `LINK` = LINK, `TITLE` = TITLE, `FILE` = FILE, `LINK_PREFIX` = LINK_PREFIX, `LINK_SUFFIX` = LINK_SUFFIX,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:exportpolygonstohtmlimagemap", `POLYGONS` = POLYGONS, `LINK` = LINK, `TITLE` = TITLE, `FILE` = FILE, `LINK_PREFIX` = LINK_PREFIX, `LINK_SUFFIX` = LINK_SUFFIX,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NA")
  }
}