character(0)

sagang_invertselectionofshapeslayer <- function(INPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:invertselectionofshapeslayer")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:invertselectionofshapeslayer", `INPUT` = INPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:invertselectionofshapeslayer", `INPUT` = INPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NA")
  }
}