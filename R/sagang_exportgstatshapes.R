character(0)

sagang_exportgstatshapes <- function(SHAPES = qgisprocess:::qgis_default_value(), FILENAME = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:exportgstatshapes")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:exportgstatshapes", `SHAPES` = SHAPES, `FILENAME` = FILENAME,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:exportgstatshapes", `SHAPES` = SHAPES, `FILENAME` = FILENAME,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NA")
  }
}