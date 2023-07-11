character(0)

sagang_deleteselectionfromshapeslayer <- function(INPUT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:deleteselectionfromshapeslayer")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:deleteselectionfromshapeslayer", `INPUT` = INPUT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:deleteselectionfromshapeslayer", `INPUT` = INPUT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NA")
  }
}