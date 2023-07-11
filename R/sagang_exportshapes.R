character(0)

sagang_exportshapes <- function(SHAPES = qgisprocess:::qgis_default_value(), FILE = qgisprocess:::qgis_default_value(), FORMAT = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:exportshapes")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:exportshapes", `SHAPES` = SHAPES, `FILE` = FILE, `FORMAT` = FORMAT,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:exportshapes", `SHAPES` = SHAPES, `FILE` = FILE, `FORMAT` = FORMAT,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NA")
  }
}