character(0)

sagang_coordinatereferencesystempicker <- function(CRS_METHOD = qgisprocess:::qgis_default_value(), CRS_PROJ4 = qgisprocess:::qgis_default_value(), CRS_FILE = qgisprocess:::qgis_default_value(), CRS_EPSG = qgisprocess:::qgis_default_value(), CRS_EPSG_AUTH = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:coordinatereferencesystempicker")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:coordinatereferencesystempicker", `CRS_METHOD` = CRS_METHOD, `CRS_PROJ4` = CRS_PROJ4, `CRS_FILE` = CRS_FILE, `CRS_EPSG` = CRS_EPSG, `CRS_EPSG_AUTH` = CRS_EPSG_AUTH,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:coordinatereferencesystempicker", `CRS_METHOD` = CRS_METHOD, `CRS_PROJ4` = CRS_PROJ4, `CRS_FILE` = CRS_FILE, `CRS_EPSG` = CRS_EPSG, `CRS_EPSG_AUTH` = CRS_EPSG_AUTH,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NA")
  }
}