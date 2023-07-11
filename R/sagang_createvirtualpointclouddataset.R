character(0)

sagang_createvirtualpointclouddataset <- function(FILES = qgisprocess:::qgis_default_value(), INPUT_FILE_LIST = qgisprocess:::qgis_default_value(), FILENAME = qgisprocess:::qgis_default_value(), METHOD_PATHS = qgisprocess:::qgis_default_value(), USE_HEADER = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:createvirtualpointclouddataset")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:createvirtualpointclouddataset", `FILES` = FILES, `INPUT_FILE_LIST` = INPUT_FILE_LIST, `FILENAME` = FILENAME, `METHOD_PATHS` = METHOD_PATHS, `USE_HEADER` = USE_HEADER,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:createvirtualpointclouddataset", `FILES` = FILES, `INPUT_FILE_LIST` = INPUT_FILE_LIST, `FILENAME` = FILENAME, `METHOD_PATHS` = METHOD_PATHS, `USE_HEADER` = USE_HEADER,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NA")
  }
}