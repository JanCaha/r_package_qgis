character(0)

sagang_removeoverlapfromvirtualpointcloudtiles <- function(FILENAME = qgisprocess:::qgis_default_value(), FILEPATH = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:removeoverlapfromvirtualpointcloudtiles")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:removeoverlapfromvirtualpointcloudtiles", `FILENAME` = FILENAME, `FILEPATH` = FILEPATH,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:removeoverlapfromvirtualpointcloudtiles", `FILENAME` = FILENAME, `FILEPATH` = FILEPATH,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NA")
  }
}