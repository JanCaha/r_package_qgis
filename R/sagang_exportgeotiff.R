character(0)

sagang_exportgeotiff <- function(GRIDS = qgisprocess:::qgis_default_value(), FILE = qgisprocess:::qgis_default_value(), OPTIONS = qgisprocess:::qgis_default_value(),..., .complete_output = .complete_output_option(), .quiet = .quiet_option(), .messages = .message_option()) {

  check_algorithm_necessities("sagang:exportgeotiff")

  if (.messages){
    output <- qgisprocess::qgis_run_algorithm("sagang:exportgeotiff", `GRIDS` = GRIDS, `FILE` = FILE, `OPTIONS` = OPTIONS,..., .quiet = .quiet)
  } else {
    suppressMessages(
      output <- qgisprocess::qgis_run_algorithm("sagang:exportgeotiff", `GRIDS` = GRIDS, `FILE` = FILE, `OPTIONS` = OPTIONS,..., .quiet = .quiet)
      )
  }

  if (.complete_output) {
    return(output)
  }
  else{
    qgisprocess::qgis_extract_output(output, "NA")
  }
}