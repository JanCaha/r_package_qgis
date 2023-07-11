character(0)

sagang_exportshapestoxyz <- function(POINTS = qgisprocess:::qgis_default_value(), FIELD = qgisprocess:::qgis_default_value(), HEADER = qgisprocess:::qgis_default_value(), SEPARATE = qgisprocess:::qgis_default_value(), FILENAME = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:exportshapestoxyz")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:exportshapestoxyz", `POINTS` = POINTS, `FIELD` = FIELD, `HEADER` = HEADER, `SEPARATE` = SEPARATE, `FILENAME` = FILENAME,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:exportshapestoxyz", `POINTS` = POINTS, `FIELD` = FIELD, `HEADER` = HEADER, `SEPARATE` = SEPARATE, `FILENAME` = FILENAME,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NA")
  }
}