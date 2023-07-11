character(0)

sagang_createvirtualrastervrt <- function(FILES = qgisprocess:::qgis_default_value(), FILE_LIST = qgisprocess:::qgis_default_value(), VRT_NAME = qgisprocess:::qgis_default_value(), RESAMPLING = qgisprocess:::qgis_default_value(), RESOLUTION = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:createvirtualrastervrt")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:createvirtualrastervrt", `FILES` = FILES, `FILE_LIST` = FILE_LIST, `VRT_NAME` = VRT_NAME, `RESAMPLING` = RESAMPLING, `RESOLUTION` = RESOLUTION,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:createvirtualrastervrt", `FILES` = FILES, `FILE_LIST` = FILE_LIST, `VRT_NAME` = VRT_NAME, `RESAMPLING` = RESAMPLING, `RESOLUTION` = RESOLUTION,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NA")
  }
}