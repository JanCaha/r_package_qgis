character(0)

sagang_gpxtoshapefile <- function(BASEPATH = qgisprocess:::qgis_default_value(), FILE = qgisprocess:::qgis_default_value(), TRACKPOINTS = qgisprocess:::qgis_default_value(), WAYPOINTS = qgisprocess:::qgis_default_value(), ROUTES = qgisprocess:::qgis_default_value(), ADD = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:gpxtoshapefile")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:gpxtoshapefile", `BASEPATH` = BASEPATH, `FILE` = FILE, `TRACKPOINTS` = TRACKPOINTS, `WAYPOINTS` = WAYPOINTS, `ROUTES` = ROUTES, `ADD` = ADD,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:gpxtoshapefile", `BASEPATH` = BASEPATH, `FILE` = FILE, `TRACKPOINTS` = TRACKPOINTS, `WAYPOINTS` = WAYPOINTS, `ROUTES` = ROUTES, `ADD` = ADD,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NA")
  }
}