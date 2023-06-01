character(0)

saga_aggregate <- function(INPUT = qgisprocess:::qgis_default_value(), SIZE = qgisprocess:::qgis_default_value(), METHOD = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("saga:aggregate")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("saga:aggregate", `INPUT` = INPUT, `SIZE` = SIZE, `METHOD` = METHOD,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("saga:aggregate", `INPUT` = INPUT, `SIZE` = SIZE, `METHOD` = METHOD,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NA")
  }
}