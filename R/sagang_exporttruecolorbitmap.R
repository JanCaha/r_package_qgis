character(0)

sagang_exporttruecolorbitmap <- function(IMAGE = qgisprocess:::qgis_default_value(), FILE = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:exporttruecolorbitmap")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:exporttruecolorbitmap", `IMAGE` = IMAGE, `FILE` = FILE,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:exporttruecolorbitmap", `IMAGE` = IMAGE, `FILE` = FILE,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NA")
  }
}